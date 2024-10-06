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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../Utils/utils.dart';
import 'item_builder.dart';

class MyCachedNetworkImage extends StatefulWidget {
  const MyCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.showLoading = false,
    this.placeholderBackground,
    this.topPadding = 0,
    this.bottomPadding = 0,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final bool showLoading;
  final Color? placeholderBackground;
  final double topPadding;
  final double bottomPadding;

  @override
  State<MyCachedNetworkImage> createState() => _MyCachedNetworkImageState();
}

class _MyCachedNetworkImageState extends State<MyCachedNetworkImage> {
  final _rebuildValueNotifier = ValueNotifier('');
  final int _maxRetries = 3;
  int _currentRetries = 0;

  void _retryLoadImage() {
    if (_currentRetries < _maxRetries) {
      setState(() {
        _rebuildValueNotifier.value = Utils.generateUid();
        _currentRetries++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: _rebuildValueNotifier,
      builder: (context, value, child) {
        return CachedNetworkImage(
          key: value.isEmpty ? null : ValueKey(value),
          imageUrl: widget.imageUrl,
          fit: widget.fit,
          width: widget.width,
          height: widget.height,
          filterQuality: FilterQuality.high,
          placeholder: widget.showLoading
              ? (context, url) => ItemBuilder.buildLoadingDialog(
                    context,
                    topPadding: widget.topPadding,
                    bottomPadding: widget.bottomPadding,
                    showText: false,
                    size: 40,
                    background: widget.placeholderBackground,
                  )
              : (context, url) => Container(
                    color: widget.placeholderBackground ??
                        Theme.of(context).cardColor,
                    width: widget.width,
                    height: widget.height,
                  ),
          errorWidget: (context, url, error) {
            return _currentRetries < _maxRetries
                ? _defaultErrorWidget(context, url, error)
                : _maxRetryReachedWidget(context, url, error);
          },
        );
      },
    );
  }

  Widget _defaultErrorWidget(BuildContext context, String url, dynamic error) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error),
          const SizedBox(height: 8),
          ItemBuilder.buildRoundButton(
            context,
            onTap: _retryLoadImage,
            text: '重新加载',
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          ),
        ],
      ),
    );
  }

  Widget _maxRetryReachedWidget(
      BuildContext context, String url, dynamic error) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error),
          SizedBox(height: 8),
          Text(
            '无法加载图片，请稍后重试',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
