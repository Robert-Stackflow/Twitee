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

import 'package:flutter/material.dart';
import 'package:twitee/Openapi/export.dart';
import 'package:twitee/Utils/constant.dart';

class TwitterImageGrid extends StatefulWidget {
  final Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final List<MediaSize> sizes;

  const TwitterImageGrid({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    required this.sizes,
  });

  @override
  TwitterImageGridState createState() => TwitterImageGridState();
}

class TwitterImageGridState extends State<TwitterImageGrid>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late List<MediaSize> sizes;
  double calculatedAspectRatio = 1.0;
  double maxAspectRatio = 3.0;
  double minAspectRatio = 0.5;

  double get aspectRatio =>
      calculatedAspectRatio.clamp(minAspectRatio, maxAspectRatio);
  double radius = 12;

  @override
  void initState() {
    super.initState();
    sizes = widget.sizes;
    if (sizes.length != widget.itemCount) {
      sizes.addAll(List.generate(widget.itemCount - sizes.length,
          (index) => const MediaSize(w: 0, h: 0, resize: MediaSizeResize.fit)));
    }
    calculatedAspectRatio = sizes.fold<double>(0, (previousValue, element) {
      if (element.w == 0 || element.h == 0) {
        return previousValue;
      }
      return previousValue + element.w / element.h;
    });
  }

  @override
  Widget build(BuildContext context) {
    int count = widget.itemCount;
    if (count == 0) {
      return emptyWidget;
    } else if (count == 1) {
      return _buildSingleImage(radius);
    } else if (count == 2) {
      return _buildTwoImages(radius);
    } else if (count == 3) {
      return _buildThreeImages(radius);
    } else if (count == 4) {
      return _buildFourImages(radius);
    } else if (count == 5) {
      return _buildFiveImages(radius);
    } else if (count == 6) {
      return _buildSixImages(radius);
    } else if (count == 7) {
      return _buildSevenImages(radius);
    } else if (count == 8) {
      return _buildEightImages(radius);
    } else {
      return _buildNineImages(radius);
    }
  }

  Widget _buildSingleImage(double radius) {
    return widget.itemBuilder(context, 0);
  }

  Widget _buildTwoImages(double radius) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Row(
          children: [
            Expanded(
              child: widget.itemBuilder(context, 0),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: widget.itemBuilder(context, 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThreeImages(double radius) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Row(
          children: [
            Expanded(
              child: widget.itemBuilder(context, 0),
            ),
            const SizedBox(width: 4),
            Column(
              children: [
                Expanded(
                  child: widget.itemBuilder(context, 1),
                ),
                const SizedBox(height: 4),
                Expanded(
                  child: widget.itemBuilder(context, 2),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFourImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return widget.itemBuilder(context, index);
        },
      ),
    );
  }

  Widget _buildFiveImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return widget.itemBuilder(context, index + 1);
            },
          ),
          const SizedBox(height: 4),
          AspectRatio(
            aspectRatio: aspectRatio,
            child: Row(
              children: [
                Expanded(
                  child: widget.itemBuilder(context, 0),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: widget.itemBuilder(context, 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSixImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return widget.itemBuilder(context, index);
        },
      ),
    );
  }

  Widget _buildSevenImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return widget.itemBuilder(context, index);
            },
          ),
          const SizedBox(height: 4),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return widget.itemBuilder(context, index + 4);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEightImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return widget.itemBuilder(context, index);
            },
          ),
          const SizedBox(height: 4),
          AspectRatio(
            aspectRatio: aspectRatio / 2,
            child: Row(
              children: [
                Expanded(
                  child: widget.itemBuilder(context, 6),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: widget.itemBuilder(context, 7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNineImages(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return widget.itemBuilder(context, index);
        },
      ),
    );
  }
}
