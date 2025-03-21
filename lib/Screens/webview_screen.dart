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

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/request_util.dart';
import 'package:twitee/Utils/uri_util.dart';

import '../Utils/Tuple/tuple.dart';
import '../Utils/constant.dart';
import '../Utils/responsive_util.dart';
import '../Utils/utils.dart';
import '../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../Widgets/BottomSheet/list_bottom_sheet.dart';
import '../Widgets/Item/item_builder.dart';
import '../generated/l10n.dart';

class WebviewScreen extends StatefulWidget {
  const WebviewScreen({
    super.key,
    required this.url,
    required this.processUri,
  });

  static const String routeName = "/webview";
  final String url;
  final bool processUri;

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen>
    with TickerProviderStateMixin {
  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
    isInspectable: kDebugMode,
    mediaPlaybackRequiresUserGesture: false,
    allowsInlineMediaPlayback: true,
    iframeAllow: "camera; microphone",
    iframeAllowFullscreen: true,
    allowsLinkPreview: false,
    useOnDownloadStart: true,
  );
  late ContextMenu contextMenu;
  String url = "";
  String title = "";
  bool canPop = true;
  bool showError = false;
  WebResourceError? currentError;
  double progress = 0;
  bool showAppBar = true;

  @override
  void initState() {
    super.initState();
    contextMenu = ContextMenu(
      settings: ContextMenuSettings(hideDefaultSystemContextMenuItems: false),
      onCreateContextMenu: (hitTestResult) async {},
      onHideContextMenu: () {},
      onContextMenuActionItemClicked: (contextMenuItemClicked) async {},
    );
  }

  initCookie() async {
    CookieManager cookieManager = CookieManager.instance();
    final expiresDate =
        DateTime.now().add(const Duration(days: 3)).millisecondsSinceEpoch;
    final url = WebUri(widget.url);
    Map map = await RequestUtil.getCookies();
    map.forEach((k, v) async {
      await cookieManager.setCookie(
        url: url,
        name: k,
        value: v,
        expiresDate: expiresDate,
        isSecure: true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvoked: (b) {
        showError = false;
        webViewController?.canGoBack().then((canGoBack) {
          webViewController?.goBack();
        });
      },
      child: Scaffold(
        backgroundColor: showAppBar
            ? MyTheme.background
            : Utils.isDark(context)
                ? const Color(0xFF151515)
                : const Color(0xFFF5F5F5),
        appBar: showAppBar
            ? ItemBuilder.buildAppBar(
                context: context,
                leading: Icons.close_rounded,
                backgroundColor: MyTheme.background,
                onLeadingTap: () {
                  Navigator.pop(context);
                },
                center: !ResponsiveUtil.isLandscape(),
                title: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.apply(fontWeightDelta: 2),
                ),
                actions: [
                  ItemBuilder.buildIconButton(
                      context: context,
                      icon: Icon(Icons.more_vert_rounded,
                          color: Theme.of(context).iconTheme.color),
                      onTap: () {
                        List<Tuple2<String, dynamic>> options = [
                          Tuple2(S.current.refresh, -1),
                          Tuple2(S.current.copyLink, 0),
                          Tuple2(S.current.openWithBrowser, 1),
                          Tuple2(S.current.shareToOtherApps, 2),
                        ];
                        BottomSheetBuilder.showListBottomSheet(
                          context,
                          (sheetContext) => TileList.fromOptions(
                            options,
                            (idx) {
                              Navigator.pop(sheetContext);
                              if (idx == -1) {
                                webViewController?.reload();
                              } else if (idx == 0) {
                                Utils.copy(context, widget.url);
                              } else if (idx == 1) {
                                UriUtil.openExternal(widget.url);
                              } else if (idx == 2) {
                                UriUtil.share(context, widget.url);
                              }
                            },
                            showCancel: true,
                            context: context,
                            showTitle: false,
                            onCloseTap: () => Navigator.pop(sheetContext),
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        );
                      }),
                  const SizedBox(width: 5),
                  if (ResponsiveUtil.isLandscape())
                    ItemBuilder.buildBlankIconButton(context),
                  if (ResponsiveUtil.isLandscape()) const SizedBox(width: 10),
                ],
              )
            : null,
        body: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri(widget.url)),
              initialUserScripts: UnmodifiableListView<UserScript>([]),
              initialSettings: settings,
              contextMenu: contextMenu,
              onWebViewCreated: (controller) async {
                webViewController = controller;
                initCookie();
              },
              onTitleChanged: (controller, title) {
                setState(() {
                  this.title = title ?? "";
                });
              },
              onLoadStart: (controller, url) async {
                setState(() {
                  this.url = url.toString();
                });
              },
              onPermissionRequest: (controller, request) async {
                return PermissionResponse(
                    resources: request.resources,
                    action: PermissionResponseAction.GRANT);
              },
              onDownloadStartRequest: (controller, url) async {
                IToast.showTop(S.current.jumpToBrowserDownload);
                Future.delayed(const Duration(milliseconds: 300), () {
                  UriUtil.openExternalUri(url.url);
                });
              },
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                var uri = navigationAction.request.url!;
                if (![
                  "http",
                  "https",
                  "file",
                  "chrome",
                  "data",
                  "javascript",
                  "about",
                ].contains(uri.scheme)) {
                  if (await UriUtil.canLaunchUri(uri)) {
                    UriUtil.launchUri(uri);
                    return NavigationActionPolicy.CANCEL;
                  }
                }
                bool processed = widget.processUri
                    ? await UriUtil.processUrl(
                        context,
                        uri.toString(),
                        quiet: true,
                        pass: true,
                      )
                    : false;
                if (processed) return NavigationActionPolicy.CANCEL;
                return NavigationActionPolicy.ALLOW;
              },
              onLoadStop: (controller, url) async {
                setState(() {
                  this.url = url.toString();
                });
                await controller.evaluateJavascript(
                    source:
                        'javascript:!function(){function t(e){e.stopPropagation(),e.stopImmediatePropagation&&e.stopImmediatePropagation()}document.querySelectorAll("*").forEach(e=>{"none"===window.getComputedStyle(e,null).getPropertyValue("user-select")&&e.style.setProperty("user-select","text","important")}),["copy","cut","contextmenu","selectstart","mousedown","mouseup","mousemove","keydown","keypress","keyup"].forEach(function(e){document.documentElement.addEventListener(e,t,{capture:!0})})}();');
              },
              onReceivedError: (controller, request, error) {
                currentError = error;
                setState(() {});
              },
              onProgressChanged: (controller, progress) {
                setState(() {
                  this.progress = progress / 100;
                });
              },
              onUpdateVisitedHistory: (controller, url, isReload) {
                setState(() {
                  this.url = url.toString();
                });
                webViewController!.canGoBack().then((value) => canPop = !value);
              },
              onConsoleMessage: (controller, consoleMessage) {},
            ),
            progress < 1.0
                ? LinearProgressIndicator(
                    value: progress,
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Colors.transparent,
                    minHeight: 2,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  )
                : emptyWidget,
            _buildErrorPage(),
          ],
        ),
      ),
    );
  }

  _buildErrorPage() {
    return Visibility(
      visible: showError,
      child: Container(
        height: MediaQuery.sizeOf(context).height - 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyTheme.background,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 100),
              Icon(
                Icons.dangerous_rounded,
                size: 50,
                color: Theme.of(context).iconTheme.color,
              ),
              const SizedBox(height: 10),
              Text(
                S.current.loadFailed,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Text(
                currentError != null
                    ? S.current.loadErrorType(currentError!.type.toString())
                    : S.current.loadUnkownError,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 10),
              Container(
                width: 180,
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: ItemBuilder.buildRoundButton(
                  context,
                  text: S.current.reload,
                  onTap: () {
                    webViewController?.reload();
                  },
                  fontSizeDelta: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
