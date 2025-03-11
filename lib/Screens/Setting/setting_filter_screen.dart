/*
 * Copyright (c) 2024-2025 Robert-Stackflow.
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
import 'package:provider/provider.dart';
import 'package:twitee/Widgets/BottomSheet/bottom_sheet_builder.dart';

import '../../Utils/app_provider.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/BottomSheet/input_bottom_sheet.dart';
import '../../Widgets/General/EasyRefresh/easy_refresh.dart';
import '../../Widgets/Item/item_builder.dart';

class FilterSettingScreen extends StatefulWidget {
  const FilterSettingScreen({super.key});

  static const String routeName = "/setting/filter";

  @override
  State<FilterSettingScreen> createState() => _FilterSettingScreenState();
}

class _FilterSettingScreenState extends State<FilterSettingScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Scaffold(
        appBar: ResponsiveUtil.isLandscape()
            ? ItemBuilder.buildDesktopAppBar(
                title: "过滤",
                context: context,
                transparent: true,
                showBack: true,
              )
            : ItemBuilder.buildAppBar(
                context: context,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                leading: Icons.arrow_back_rounded,
                onLeadingTap: () {
                  Navigator.pop(context);
                },
                title: Text(
                  "过滤",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.apply(fontWeightDelta: 2),
                ),
                actions: [
                  ItemBuilder.buildBlankIconButton(context),
                  const SizedBox(width: 10),
                ],
              ),
        body: EasyRefresh(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              if (ResponsiveUtil.isLandscape()) const SizedBox(height: 10),
              ..._proxySettings(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  _proxySettings() {
    return [
      Selector<AppProvider, bool>(
        selector: (context, appProvider) => appProvider.enableFilterContent,
        builder: (context, enableFilterContent, child) =>
            ItemBuilder.buildRadioItem(
          context: context,
          title: "过滤内容",
          topRadius: true,
          value: enableFilterContent,
          bottomRadius: !enableFilterContent,
          description: "是否过滤推文内容",
          onTap: () {
            appProvider.enableFilterContent = !enableFilterContent;
          },
        ),
      ),
      Selector<AppProvider, bool>(
        selector: (context, appProvider) => appProvider.enableFilterContent,
        builder: (context, enableFilterContent, child) {
          if (enableFilterContent) {
            return Selector<AppProvider, String>(
              selector: (context, appProvider) =>
                  appProvider.filterContentRegExp,
              builder: (context, filterContent, child) =>
                  ItemBuilder.buildEntryItem(
                context: context,
                title: "关键词",
                description: "支持正则表达式，留空则忽略",
                bottomRadius: true,
                tip: filterContent,
                onTap: () {
                  BottomSheetBuilder.showBottomSheet(
                    context,
                    responsive: true,
                    (context) => InputBottomSheet(
                      title: "设置过滤关键词",
                      message: "支持正则表达式，留空则忽略",
                      text: filterContent,
                      hint: "输入关键词",
                      onConfirm: (text) {
                        appProvider.filterContentRegExp = text;
                      },
                    ),
                  );
                },
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
      const SizedBox(height: 10),
      Selector<AppProvider, bool>(
        selector: (context, appProvider) => appProvider.enableFilterUser,
        builder: (context, enableFilterUser, child) =>
            ItemBuilder.buildRadioItem(
          context: context,
          title: "过滤作者",
          topRadius: true,
          value: enableFilterUser,
          bottomRadius: !enableFilterUser,
          description: "是否过滤推文作者",
          onTap: () {
            appProvider.enableFilterUser = !enableFilterUser;
          },
        ),
      ),
      Selector<AppProvider, bool>(
        selector: (context, appProvider) => appProvider.enableFilterUser,
        builder: (context, enableFilterUser, child) {
          if (enableFilterUser) {
            return Selector<AppProvider, String>(
              selector: (context, appProvider) => appProvider.filterUserRegExp,
              builder: (context, filterUser, child) =>
                  ItemBuilder.buildEntryItem(
                context: context,
                title: "关键词",
                description: "支持正则表达式，留空则忽略",
                bottomRadius: true,
                tip: filterUser,
                onTap: () {
                  BottomSheetBuilder.showBottomSheet(
                    context,
                    responsive: true,
                    (context) => InputBottomSheet(
                      title: "设置过滤关键词",
                      message: "支持正则表达式，留空则忽略",
                      text: filterUser,
                      hint: "输入关键词",
                      onConfirm: (text) {
                        appProvider.filterUserRegExp = text;
                      },
                    ),
                  );
                },
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    ];
  }
}
