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
import 'package:twitee/Screens/Flow/community_list_flow_screen.dart';
import 'package:twitee/Widgets/Twitter/refresh_interface.dart';

class CommunityHomeScreen extends StatefulWidgetForFlow {
  const CommunityHomeScreen({
    super.key,
    super.nested,
    super.scrollController,
    super.triggerOffset,
    this.topics = const [],
  });

  final List<CommunityTopic> topics;

  static const String routeName = "/navigtion/communityHome";

  @override
  State<CommunityHomeScreen> createState() => CommunityHomeScreenState();
}

class CommunityHomeScreenState extends State<CommunityHomeScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin, RefreshMixin {
  @override
  bool get wantKeepAlive => true;
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineAddEntry> validEntries = [];

  String? currentTopicId;

  late final ScrollController _scrollController;

  GlobalKey<CommunityListFlowScreenState> flowKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
  }

  @override
  ScrollController? getScrollController() {
    return _scrollController;
  }

  @override
  scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  refresh() async {
    (flowKey.currentState as RefreshMixin?)?.refresh();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildBodyWithTopics();
  }

  _buildBodyWithTopics() {
    return Column(
      children: [
        Expanded(
          child: CommunityListFlowScreen(
            key: flowKey,
            type: CommunityListFlowType.Ranked,
            scrollController: _scrollController,
          ),
        ),
      ],
    );
  }
}
