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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Openapi/models/timeline_timeline_item.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Dialog/custom_dialog.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_twitter_list.dart';
import '../../Openapi/models/user.dart';
import '../../Utils/hive_util.dart';

class ListMembershipManageScreen extends StatefulWidget {
  const ListMembershipManageScreen({super.key, required this.targetUserId});

  final String targetUserId;

  static const String routeName = "/navigtion/listMembershipManage";

  @override
  State<ListMembershipManageScreen> createState() =>
      _ListMembershipManageScreenState();
}

class _ListMembershipManageScreenState extends State<ListMembershipManageScreen>
    with TickerProviderStateMixin {
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineTwitterList> validItems = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  bool _noMore = false;

  Map<String, bool> isMemberMap = {};

  @override
  void initState() {
    super.initState();
  }

  Future<IndicatorResult> _onRefresh() async {
    UserInfo? userInfo = HiveUtil.getUserInfo();
    if (_loading || userInfo == null) return IndicatorResult.none;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      res = await ListApi.getMemberships(
        userId: userInfo.idStr,
        targetUserId: widget.targetUserId,
      );
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = validItems = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
          }
        }
        isMemberMap = _refreshMap();
        if (newEntries.isEmpty) {
          _noMore = true;
        } else {
          _noMore = false;
        }
        return IndicatorResult.success;
      } else {
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get lists", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
      if (mounted) setState(() {});
    }
  }

  Map<String, bool> _refreshMap() {
    Map<String, bool> res = {};
    for (var item in validItems) {
      res[item.list.idStr] = item.list.isMember;
    }
    return res;
  }

  Future<IndicatorResult> _onLoad() async {
    UserInfo? userInfo = HiveUtil.getUserInfo();
    if (_loading || userInfo == null) return IndicatorResult.none;
    if (cursorBottom == null) return IndicatorResult.none;
    _loading = true;
    try {
      ResponseResult res;
      res = await ListApi.getMemberships(
        userId: userInfo.idStr,
        targetUserId: widget.targetUserId,
        cursor: cursorBottom!.value,
      );
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries.addAll(_processEntries(instruction.entries));
            validItems.addAll(newEntries);
            _refreshCursor(instruction.entries);
            if (mounted) setState(() {});
          }
        }
        if (newEntries.isEmpty) {
          _noMore = true;
          return IndicatorResult.noMore;
        } else {
          _noMore = false;
          return IndicatorResult.success;
        }
      } else {
        IToast.showTop("加载失败");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to load lists", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  _refreshCursor(List<TimelineAddEntry> entries) {
    for (var entry in entries) {
      if (entry.content is TimelineTimelineCursor) {
        if ((entry.content as TimelineTimelineCursor).cursorType ==
            CursorType.top) {
          cursorTop = entry.content as TimelineTimelineCursor;
        } else if ((entry.content as TimelineTimelineCursor).cursorType ==
            CursorType.bottom) {
          cursorBottom = entry.content as TimelineTimelineCursor;
        }
      }
    }
  }

  List<TimelineTwitterList> _processEntries(List<TimelineAddEntry> entries) {
    List<TimelineTwitterList> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineItem) {
        TimelineTimelineItem module = entry.content as TimelineTimelineItem;
        if (module.itemContent is TimelineTwitterList) {
          result.add(module.itemContent as TimelineTwitterList);
        }
      }
    }
    return result;
  }

  _save() async {
    try {
      bool saveState = true;
      CustomLoadingDialog.showLoading(title: "保存中...");
      Map<String, bool> resMap = _refreshMap();
      List<String> addList = [];
      List<String> removeList = [];
      for (var entry in resMap.entries) {
        if (entry.value != isMemberMap[entry.key]) {
          if (entry.value) {
            addList.add(entry.key);
          } else {
            removeList.add(entry.key);
          }
        }
      }
      for (var listId in addList) {
        var res = await ListApi.addMember(
            listId: listId, userId: widget.targetUserId);
        saveState = saveState && res.success;
      }
      for (var listId in removeList) {
        var res = await ListApi.deleteMember(
            listId: listId, userId: widget.targetUserId);
        saveState = saveState && res.success;
      }
      if (saveState) {
        IToast.showTop("保存成功");
        if (ResponsiveUtil.isLandscape()) {
          dialogNavigatorState?.popPage();
        } else {
          Navigator.pop(context);
        }
      } else {
        IToast.showTop("保存失败");
      }
    } catch (e, t) {
      IToast.showTop("保存失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to save lists", e, t);
    } finally {
      CustomLoadingDialog.dismissLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!ResponsiveUtil.isLandscape()) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.vertical(
              top: const Radius.circular(20),
              bottom: ResponsiveUtil.isWideLandscape()
                  ? const Radius.circular(20)
                  : Radius.zero),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(height: 40),
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: Row(
                children: [
                  Text(
                    "选择列表",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(),
                  ItemBuilder.buildRoundButton(
                    context,
                    text: "保存",
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    background: Theme.of(context).primaryColor,
                    onTap: _save,
                  ),
                ],
              ),
            ),
            Expanded(
              child: _buildBody(),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: ItemBuilder.buildSimpleAppBar(
            context: context,
            title: "选择列表",
            transparent: true,
            actions: [
              ItemBuilder.buildRoundButton(
                context,
                text: "保存",
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                background: Theme.of(context).primaryColor,
                onTap: _save,
              ),
              if (ResponsiveUtil.isLandscape()) const SizedBox(width: 5),
              if (ResponsiveUtil.isLandscape())
                ItemBuilder.buildBlankIconButton(context),
              const SizedBox(width: 10),
            ],
          ),
        ),
        body: _buildBody(),
      );
    }
  }

  _buildBody() {
    return EasyRefresh(
      onRefresh: () async {
        return await _onRefresh();
      },
      onLoad: () async {
        return await _onLoad();
      },
      refreshOnStart: true,
      triggerAxis: Axis.vertical,
      controller: _easyRefreshController,
      child: ItemBuilder.buildLoadMoreNotification(
        onLoad: _onLoad,
        noMore: _noMore,
        child: WaterfallFlow.extent(
          controller: _scrollController,
          padding: ResponsiveUtil.isLandscape()
              ? const EdgeInsets.all(8).add(const EdgeInsets.only(bottom: 16))
              : const EdgeInsets.only(bottom: 16),
          mainAxisSpacing: ResponsiveUtil.isLandscape() ? 6 : 2,
          maxCrossAxisExtent: 600,
          crossAxisSpacing: 6,
          children: List.generate(
            validItems.length,
            (index) {
              return _buildListItem(validItems[index]);
            },
          ),
        ),
      ),
    );
  }

  _buildListItem(TimelineTwitterList list) {
    User user = list.list.userResults.result as User;
    var radius = ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
    return ItemBuilder.buildClickItem(
      Material(
        color: Theme.of(context).canvasColor,
        borderRadius: radius,
        child: InkWell(
          onTap: () {
            list.list.isMember = !list.list.isMember;
            if (mounted) setState(() {});
          },
          borderRadius: radius,
          child: Container(
            decoration: BoxDecoration(borderRadius: radius),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ItemBuilder.buildCachedImage(
                    imageUrl:
                        list.list.defaultBannerMedia.mediaInfo.originalImgUrl,
                    context: context,
                    width: 64,
                    height: 64,
                    showLoading: false,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        list.list.name,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                      ),
                      Text(
                        user.legacy.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "@${user.legacy.screenName}",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "${list.list.memberCount} 位成员",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                if (list.list.isMember)
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.done_rounded),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
