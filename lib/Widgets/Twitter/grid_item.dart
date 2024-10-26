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

import '../../Openapi/models/timeline_tweet.dart';
import '../../Openapi/models/tweet.dart';
import '../../Screens/Detail/tweet_detail_screen.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/tweet_util.dart';
import '../Item/item_builder.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    super.key,
    required this.timelineTweet,
    this.size = 100,
  });

  final double size;

  final TimelineTweet timelineTweet;

  @override
  GridItemState createState() => GridItemState();
}

class GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return _buildGridItem(widget.size, widget.timelineTweet);
  }

  _buildGridItem(double size, TimelineTweet timelineTweet) {
    Tweet tweet = TweetUtil.getTrueTweetByResult(timelineTweet.tweetResults)!;
    int count = TweetUtil.getMediaCount(timelineTweet);
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return Material(
      color: Colors.transparent,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: () {
          panelScreenState?.pushPage(TweetDetailScreen(tweetId: tweet.restId!));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: radius,
              child: ItemBuilder.buildCachedImage(
                imageUrl: tweet.legacy!.entities.media![0]!.mediaUrlHttps!,
                width: size,
                height: size,
                context: context,
                fit: BoxFit.cover,
                showLoading: false,
              ),
            ),
            if (count > 1)
              const Positioned(
                right: 8,
                bottom: 8,
                child: Icon(
                  Icons.photo_library_rounded,
                  color: Colors.white,
                ),
              )
          ],
        ),
      ),
    );
  }
}
