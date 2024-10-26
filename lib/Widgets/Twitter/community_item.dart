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
import 'package:twitee/Resources/theme.dart';

import '../../Openapi/models/article_cover_media_info.dart';
import '../../Openapi/models/community.dart';
import '../../Openapi/models/community_data.dart';
import '../../Screens/Detail/community_detail_screen.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/route_util.dart';
import '../Item/item_builder.dart';

class CommunityItem extends StatefulWidget {
  const CommunityItem({
    super.key,
    required this.community,
  });

  final Community community;

  @override
  CommunityItemState createState() => CommunityItemState();
}

class CommunityItemState extends State<CommunityItem> {
  @override
  Widget build(BuildContext context) {
    return _buildCommunityItem(widget.community);
  }

  _buildCommunityItem(Community community) {
    CommunityData communityData = community.result;
    ArticleCoverMediaInfo mediaInfo =
        communityData.customBannerMedia?.mediaInfo ??
            communityData.defaultBannerMedia!.mediaInfo!;
    return Material(
      color: MyTheme.itemBackground,
      borderRadius: MyTheme.responsiveBorderRadius,
      child: InkWell(
        onTap: () {
          RouteUtil.pushPanelCupertinoRoute(
            context,
            CommunityDetailScreen(
              communityId: communityData.restId ?? communityData.idStr ?? "",
            ),
          );
        },
        borderRadius: MyTheme.responsiveBorderRadius,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: MyTheme.responsiveBorderRadius,
            border: MyTheme.responsiveBottomBorder,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ItemBuilder.buildHeroCachedImage(
                  imageUrl: mediaInfo.originalImgUrl ?? AssetUtil.banner,
                  context: context,
                  width: 90,
                  height: 90,
                  showLoading: false,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      communityData.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.apply(fontWeightDelta: 2),
                    ),
                    ItemBuilder.buildCountItem(
                      context,
                      title: "成员",
                      value: communityData.memberCount,
                    ),
                    if (communityData.primaryCommunityTopic != null)
                      Text(
                        "话题：${communityData.primaryCommunityTopic!.topicName!}",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(fontSizeDelta: 2),
                      ),
                    Text(
                      communityData.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.apply(fontSizeDelta: 2),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
