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
import 'package:provider/provider.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Widgets/BottomSheet/input_bottom_sheet.dart';

import '../../Utils/app_provider.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/proxy_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../../Widgets/BottomSheet/list_bottom_sheet.dart';
import '../../Widgets/General/EasyRefresh/easy_refresh.dart';
import '../../Widgets/Item/item_builder.dart';

class NetworkSettingScreen extends StatefulWidget {
  const NetworkSettingScreen({super.key});

  static const String routeName = "/setting/network";

  @override
  State<NetworkSettingScreen> createState() => _NetworkSettingScreenState();
}

class _NetworkSettingScreenState extends State<NetworkSettingScreen>
    with TickerProviderStateMixin {
  ProxyConfig proxyConfig =
      HiveUtil.getProxyConfig() ?? ProxyConfig(proxyType: ProxyType.NoProxy);

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
                title: "网络",
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
                  "网络",
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
      Selector<AppProvider, ProxyConfig>(
        selector: (context, appProvider) => appProvider.proxyConfig,
        builder: (context, proxyConfig, child) => ItemBuilder.buildEntryItem(
          context: context,
          title: "代理模式",
          topRadius: true,
          bottomRadius: proxyConfig.proxyType != ProxyType.Custom,
          tip: proxyConfig.proxyType.key,
          onTap: () {
            BottomSheetBuilder.showListBottomSheet(
              context,
              (context) => TileList.fromOptions(
                ProxyType.options(),
                (item2) {
                  appProvider.proxyConfig = ProxyConfig(
                      proxyType: item2, httpProxy: proxyConfig.httpProxy);
                  Navigator.pop(context);
                },
                selected: proxyConfig.proxyType,
                context: context,
                title: "选择代理模式",
                onCloseTap: () => Navigator.pop(context),
              ),
            );
          },
        ),
      ),
      Selector<AppProvider, ProxyConfig>(
        selector: (context, appProvider) => appProvider.proxyConfig,
        builder: (context, proxyConfig, child) =>
            proxyConfig.proxyType == ProxyType.Custom
                ? ItemBuilder.buildEntryItem(
                    context: context,
                    title: "设置自定义代理",
                    bottomRadius: true,
                    tip: proxyConfig.httpProxy ?? "",
                    tipWidth: 300,
                    onTap: () {
                      BottomSheetBuilder.showBottomSheet(
                        context,
                        responsive: true,
                        (context) => InputBottomSheet(
                          title: "设置自定义代理",
                          text: proxyConfig.httpProxy ?? "",
                          hint: "请输入代理地址",
                          onConfirm: (text) {
                            appProvider.proxyConfig = ProxyConfig(
                                proxyType: ProxyType.Custom, httpProxy: text);
                          },
                        ),
                      );
                    },
                  )
                : emptyWidget,
      ),
    ];
  }
}
