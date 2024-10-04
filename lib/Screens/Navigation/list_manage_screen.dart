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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitee/Api/data_api.dart';
import 'package:twitee/Api/list_api.dart';
import 'package:twitee/Models/response_result.dart';
import 'package:twitee/Openapi/models/user.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/ilogger.dart';
import 'package:twitee/Utils/itoast.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/General/EasyRefresh/easy_refresh.dart';
import 'package:twitee/Widgets/Hidable/scroll_to_hide.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/WaterfallFlow/scroll_view.dart';

import '../../Openapi/models/cursor_type.dart';
import '../../Openapi/models/module_item.dart';
import '../../Openapi/models/timeline.dart';
import '../../Openapi/models/timeline_add_entries.dart';
import '../../Openapi/models/timeline_add_entry.dart';
import '../../Openapi/models/timeline_timeline_cursor.dart';
import '../../Openapi/models/timeline_timeline_module.dart';
import '../../Openapi/models/timeline_twitter_list.dart';

class ListManageScreen extends StatefulWidget {
  const ListManageScreen({super.key, required this.userId});

  final String userId;

  static const String routeName = "/navigtion/listManage";

  @override
  State<ListManageScreen> createState() => _ListManageScreenState();
}

class _ListManageScreenState extends State<ListManageScreen>
    with TickerProviderStateMixin {
  TimelineTimelineCursor? cursorTop;
  TimelineTimelineCursor? cursorBottom;

  List<TimelineTwitterList> validItems = [];

  bool _loading = false;

  final ScrollController _scrollController = ScrollController();

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  late AnimationController _refreshRotationController;

  bool _noMore = false;

  @override
  void initState() {
    super.initState();
    _refreshRotationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  _scrollToTop() async {
    await _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<IndicatorResult> _onRefresh() async {
    if (_loading) return IndicatorResult.none;
    _loading = true;
    cursorBottom = null;
    try {
      ResponseResult res;
      res = await DataApi.getLists(userId: widget.userId);
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries = validItems = _processEntries(instruction.entries);
            _refreshCursor(instruction.entries);
            setState(() {});
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
        IToast.showTop("加载失败：${res.message}");
        return IndicatorResult.fail;
      }
    } catch (e, t) {
      IToast.showTop("加载失败：${e.toString()}");
      ILogger.error("Twitee", "Failed to get lists", e, t);
      return IndicatorResult.fail;
    } finally {
      _loading = false;
    }
  }

  Future<IndicatorResult> _onLoad() async {
    if (cursorBottom == null) return IndicatorResult.none;
    if (_loading) return IndicatorResult.none;
    _loading = true;
    try {
      ResponseResult res;
      res = await DataApi.getLists(
        userId: widget.userId,
        cursorBottom: cursorBottom!.value,
      );
      if (res.success) {
        Timeline timeline = res.data;
        List<TimelineTwitterList> newEntries = [];
        for (var instruction in timeline.instructions) {
          if (instruction is TimelineAddEntries) {
            newEntries.addAll(_processEntries(instruction.entries));
            validItems.addAll(newEntries);
            _refreshCursor(instruction.entries);
            setState(() {});
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
        IToast.showTop("加载失败：${res.message}");
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
    List<ModuleItem> result = [];
    for (var entry in entries) {
      if (entry.content is TimelineTimelineModule) {
        TimelineTimelineModule module = entry.content as TimelineTimelineModule;
        if (module.items != null) {
          result.addAll(
              module.items!.where((element) => element != null).map((e) => e!));
        }
      }
    }
    List<TimelineTwitterList> lists = [];
    for (var item in result) {
      if (item.item.itemContent is TimelineTwitterList) {
        lists.add(item.item.itemContent as TimelineTwitterList);
      }
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: ItemBuilder.buildSimpleAppBar(
          context: context,
          title: "管理列表",
          transparent: true,
          actions: [
            ItemBuilder.buildIconButton(
              context: context,
              icon: Icon(
                Icons.add_rounded,
                size: Theme.of(context).iconTheme.size,
                color: Theme.of(context).iconTheme.color,
              ),
              onTap: () {},
            ),
            if (ResponsiveUtil.isLandscape())
              Container(
                margin: const EdgeInsets.only(right: 5),
                child: ItemBuilder.buildBlankIconButton(context),
              ),
          ],
        ),
      ),
      body: Stack(
        children: [
          EasyRefresh(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                maxCrossAxisExtent: 600,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                children: List.generate(
                  validItems.length,
                  (index) {
                    return _buildListItem(validItems[index]);
                  },
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: ScrollToHide(
              scrollController: _scrollController,
              hideDirection: Axis.vertical,
              child: _buildFloatingButtons(),
            ),
          ),
        ],
      ),
    );
  }

  _buildListItem(TimelineTwitterList list) {
    User user = list.list.userResults.result as User;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ItemBuilder.buildCachedImage(
              imageUrl: list.list.defaultBannerMedia.mediaInfo.originalImgUrl,
              context: context,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                list.list.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                children: [
                  Text(
                    "${user.legacy.name}  @${user.legacy.screenName}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
              Text(
                "${list.list.memberCount} 位成员",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const Spacer(),
          ItemBuilder.buildIconButton(
            context: context,
            icon: Icon(list.list.isPrivate
                ? Icons.lock_rounded
                : Icons.lock_open_rounded),
            onTap: () async {
              if (list.list.isPrivate) {
                DialogBuilder.showConfirmDialog(
                  context,
                  title: "设为公开",
                  message: "确定要将列表${list.list.name}设为公开吗？",
                  onTapConfirm: () async {
                    ResponseResult res = await ListApi.updateList(
                      listId: list.list.idStr,
                      isPrivate: false,
                      description: list.list.description,
                      name: list.list.name,
                    );
                    if (res.success) {
                      setState(() {
                        list.list.mode = "Public";
                      });
                      IToast.showTop("设置成功");
                    } else {
                      IToast.showTop("设置失败");
                    }
                  },
                );
              } else {
                ResponseResult res = await ListApi.updateList(
                  listId: list.list.idStr,
                  isPrivate: true,
                  description: list.list.description,
                  name: list.list.name,
                );
                if (res.success) {
                  setState(() {
                    list.list.mode = "Private";
                  });
                  IToast.showTop("设置成功");
                } else {
                  IToast.showTop("设置失败");
                }
              }
            },
          ),
          ItemBuilder.buildIconButton(
            context: context,
            icon: Icon(
              list.list.pinning ? CupertinoIcons.pin_fill : CupertinoIcons.pin,
              size: 22,
            ),
            padding: const EdgeInsets.all(9),
            onTap: () async {
              if (list.list.pinning) {
                ResponseResult res =
                    await ListApi.unpinList(listId: list.list.idStr);
                if (res.success) {
                  setState(() {
                    list.list.pinning = false;
                  });
                  homeScreenState?.refreshPinnedLists();
                } else {
                  IToast.showTop("取消置顶失败");
                }
              } else {
                ResponseResult res =
                    await ListApi.pinList(listId: list.list.idStr);
                if (res.success) {
                  setState(() {
                    list.list.pinning = true;
                  });
                  homeScreenState?.refreshPinnedLists();
                } else {
                  IToast.showTop("置顶失败");
                }
              }
            },
          ),
        ],
      ),
    );
  }

  _buildFloatingButtons() {
    return Column(
      children: [
        ItemBuilder.buildShadowIconButton(
          context: context,
          icon: RotationTransition(
            turns:
                Tween(begin: 0.0, end: 1.0).animate(_refreshRotationController),
            child: const Icon(Icons.refresh_rounded),
          ),
          onTap: () async {
            _refreshRotationController.repeat();
            await _scrollToTop();
            _refreshRotationController.stop();
            _refreshRotationController.forward();
            _easyRefreshController.callRefresh();
          },
        ),
      ],
    );
  }
}
