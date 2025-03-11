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
import 'package:flutter/services.dart';
import 'package:twitee/Resources/theme.dart';
import 'package:twitee/Utils/responsive_util.dart';

import '../../Openapi/models/topic_context.dart';
import '../Item/item_builder.dart';

class TopicRow extends StatefulWidget {
  const TopicRow({
    super.key,
    required this.topics,
    required this.onSelectTopic,
  });

  final List<CommunityTopic> topics;

  final Function(String?) onSelectTopic;

  @override
  TopicRowState createState() => TopicRowState();
}

class TopicRowState extends State<TopicRow> {
  List<CommunityTopic> topics = [];

  CommunityTopic? currentTopic;

  CommunityTopic? currentSubTopic;

  String? get currentTopicId =>
      currentSubTopic?.topicId ?? currentTopic?.topicId;

  bool get showSubTopics =>
      currentTopic != null && currentTopic!.subTopics.isNotEmpty;

  @override
  void initState() {
    super.initState();
    topics = widget.topics;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveUtil.isLandscape() ? _buildTopicWrap() : _buildTopicList();
  }

  _buildTopicList() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: MyTheme.itemBackground,
        border: MyTheme.responsiveBottomBorder,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: showSubTopics
            ? currentTopic!.subTopics.length + 2
            : widget.topics.length,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemBuilder: (context, index) {
          if (showSubTopics) {
            if (index == 0) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                child: ItemBuilder.buildRoundButton(
                  context,
                  padding: const EdgeInsets.symmetric(horizontal: 5.5),
                  showBorder: true,
                  icon: const Icon(Icons.arrow_upward_rounded, size: 16),
                  background: Colors.transparent,
                  onTap: () {
                    currentTopic = null;
                    currentSubTopic = null;
                    setState(() {});
                    widget.onSelectTopic(currentTopicId);
                  },
                ),
              );
            } else if (index == 1) {
              return _buildTopic(currentTopic!);
            } else {
              return _buildTopic(
                currentTopic!.subTopics[index - 2],
                isSub: true,
              );
            }
          } else {
            return _buildTopic(widget.topics[index]);
          }
        },
      ),
    );
  }

  _buildTopicWrap() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(color: MyTheme.background),
      child: Wrap(
        spacing: 6,
        runSpacing: 4,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          if (showSubTopics)
            ItemBuilder.buildRoundButton(
              context,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              showBorder: true,
              icon: const Icon(Icons.arrow_upward_rounded, size: 16),
              background: Colors.transparent,
              onTap: () {
                HapticFeedback.mediumImpact();
                currentTopic = null;
                currentSubTopic = null;
                setState(() {});
                widget.onSelectTopic(currentTopicId);
              },
            ),
          if (showSubTopics) _buildTopic(currentTopic!, rightMargin: 0),
          if (showSubTopics)
            ...currentTopic!.subTopics.map((subTopic) =>
                _buildTopic(subTopic, isSub: true, rightMargin: 0)),
          if (!showSubTopics)
            ...widget.topics.map((topic) => _buildTopic(topic, rightMargin: 0)),
        ],
      ),
    );
  }

  _buildTopic(
    CommunityTopic topic, {
    bool isSub = false,
    double rightMargin = 8,
  }) {
    bool isCurrent = currentTopicId == topic.topicId;
    return Container(
      margin: EdgeInsets.only(right: rightMargin),
      child: ItemBuilder.buildRoundButton(
        context,
        text: topic.topicName,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        showBorder: true,
        background:
            isCurrent ? Theme.of(context).primaryColor : Colors.transparent,
        color: isCurrent ? null : Theme.of(context).primaryColor,
        onTap: () {
          HapticFeedback.mediumImpact();
          if (currentTopicId == topic.topicId) {
            currentTopic = null;
            currentSubTopic = null;
          } else {
            if (isSub) {
              currentSubTopic = topic;
            } else {
              currentTopic = topic;
              currentSubTopic = null;
            }
          }
          setState(() {});
          widget.onSelectTopic(currentTopicId);
        },
      ),
    );
  }
}
