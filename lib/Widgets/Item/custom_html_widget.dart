/*
 * Copyright (c) 2024 Robert-Stackflow.
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:async';

import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';

import '../../Resources/colors.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/url_preview_helper.dart';
import '../../Utils/utils.dart';
import '../../generated/l10n.dart';
import 'item_builder.dart';

class CustomHtmlWidget extends StatefulWidget {
  const CustomHtmlWidget({
    super.key,
    required this.content,
    this.style,
    this.enableImageDetail = true,
    this.parseImage = true,
    this.showLoading = true,
    this.onDownloadSuccess,
    this.heightDelta,
  });

  final String content;
  final TextStyle? style;
  final bool enableImageDetail;
  final bool parseImage;
  final bool showLoading;
  final Function()? onDownloadSuccess;
  final double? heightDelta;

  @override
  CustomHtmlWidgetState createState() => CustomHtmlWidgetState();
}

class CustomHtmlWidgetState extends State<CustomHtmlWidget> {
  Timer? _hoverTimer;
  String? _url;

  _startHoverTimer() {
    _hoverTimer = Timer(const Duration(milliseconds: 1000), () {
      if (_url != null) {
        UrlPreviewHelper.showUrlPreviewOverlay(context, _url!);
      }
    });
  }

  void _cancelHoverTimer() {
    _hoverTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return _buildHtmlWidget(
      widget.content,
      style: widget.style,
      enableImageDetail: widget.enableImageDetail,
      parseImage: widget.parseImage,
      showLoading: widget.showLoading,
      onDownloadSuccess: widget.onDownloadSuccess,
    );
  }

  _buildLinkContextMenuButtons(String url) {
    return FlutterContextMenu(
      entries: [
        FlutterContextMenuItem(
          "在浏览器打开",
          iconData: Icons.open_in_browser_rounded,
          onPressed: () {
            UriUtil.processUrl(context, url);
          },
        ),
        FlutterContextMenuItem(
          S.current.copyLink,
          iconData: Icons.copy_rounded,
          onPressed: () {
            Utils.copy(context, url);
          },
        ),
      ],
    );
  }

  _buildHtmlWidget(
    String content, {
    TextStyle? style,
    bool enableImageDetail = true,
    bool parseImage = true,
    bool showLoading = true,
    Function()? onDownloadSuccess,
  }) {
    if (style != null) {
      style = style.apply(
          heightDelta: widget.heightDelta ?? -0.3, letterSpacingDelta: -0.5);
    }
    style ??= Theme.of(context)
        .textTheme
        .bodyMedium
        ?.apply(fontSizeDelta: 3, heightDelta: 0.3);
    return ItemBuilder.buildSelectableArea(
      context: context,
      focusNode: FocusNode(),
      child: HtmlWidget(
        content,
        enableCaching: true,
        renderMode: RenderMode.column,
        textStyle: style,
        factoryBuilder: () => CustomImageFactory(),
        customWidgetBuilder: (e) {
          if (e.localName == 'a' && e.attributes.containsKey('href')) {
            String url = e.attributes['href']!;
            return InlineCustomWidget(
              child: ItemBuilder.buildClickItem(
                MouseRegion(
                  onHover: (_) {
                    if (ResponsiveUtil.isLandscape()) {
                      _url = url;
                      _startHoverTimer();
                    }
                  },
                  onExit: (_) async {
                    _url = null;
                    _cancelHoverTimer();
                    await UrlPreviewHelper.remove();
                  },
                  child: GestureDetector(
                    onTap: () {
                      UriUtil.processUrl(context, url);
                    },
                    onSecondaryTap: () {
                      if (!UriUtil.isTwitterUrl(url)) {
                        BottomSheetBuilder.showContextMenu(
                            context, _buildLinkContextMenuButtons(url));
                      }
                    },
                    child: Text(
                      e.text,
                      style:
                          style?.apply(color: MyColors.getLinkColor(context)),
                    ),
                  ),
                ),
              ),
            );
          }
          return null;
        },
        customStylesBuilder: (e) {
          if (e.id == "title") {
            return {
              'font-weight': '700',
              'font-size': 'larger',
            };
          }
          return null;
        },
        onTapUrl: (url) async {
          UriUtil.processUrl(context, url);
          return true;
        },
        onLoadingBuilder: showLoading
            ? (context, _, __) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ItemBuilder.buildLoadingDialog(
                    context,
                    text: S.current.loading,
                    size: 40,
                    bottomPadding: 30,
                    topPadding: 30,
                  ),
                );
              }
            : null,
      ),
    );
  }
}
