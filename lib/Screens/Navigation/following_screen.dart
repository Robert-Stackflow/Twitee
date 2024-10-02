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
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Api/timeline_api.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_response.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  static const String routeName = "/navigtion/following";

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen>
    with TickerProviderStateMixin {
  TimelineResponse? response;

  List<TimelineAddEntry> entries = [];

  @override
  void initState() {
    super.initState();
  }

  _onRefresh() async {
    var res = await TimelineApi.getHomeline();
    if (res.success) {
      setState(() {
        response = res.data;
      });
      for (var instruction
          in response!.data.home.homeTimelineUrt.instructions) {
        if (instruction is TimelineAddEntries) {
          entries.addAll((instruction).entries);
          setState(() {});
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onRefresh: _onRefresh,
      onLoad: () async {
        print("onLoad");
      },
      child: WaterfallFlow.extent(
        padding: const EdgeInsets.all(8),
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: List.generate(
          entries.length,
          (index) {
            return _buildItem(entries[index]);
          },
        ),
      ),
    );
  }

  _buildItem(TimelineAddEntry entry) {
    return Container(
      child: Text(
        entry.entryId,
      ),
    );
  }
}
