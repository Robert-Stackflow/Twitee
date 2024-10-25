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
import 'package:twitee/Screens/Setting/setting_appearance_screen.dart';
import 'package:twitee/Screens/Setting/setting_general_screen.dart';
import 'package:twitee/Screens/Setting/setting_network_screen.dart';
import 'package:twitee/Screens/Setting/setting_safe_screen.dart';

import '../../Utils/app_provider.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/route_util.dart';
import '../../Widgets/General/EasyRefresh/easy_refresh.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../generated/l10n.dart';

class SettingNavigationScreen extends StatefulWidget {
  const SettingNavigationScreen({super.key});

  static const String routeName = "/setting/navigation";

  @override
  State<SettingNavigationScreen> createState() =>
      _SettingNavigationScreenState();
}

class _SettingNavigationScreenState extends State<SettingNavigationScreen>
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
                title: S.current.setting,
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
                  S.current.setting,
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
              ItemBuilder.buildEntryItem(
                context: context,
                title: S.current.generalSetting,
                leading: Icons.now_widgets_outlined,
                showLeading: true,
                topRadius: true,
                bottomRadius: true,
                onTap: () {
                  RouteUtil.pushPanelCupertinoRoute(context,
                      GeneralSettingScreen(key: generalSettingScreenKey));
                },
              ),
              const SizedBox(height: 10),
              ItemBuilder.buildEntryItem(
                context: context,
                title: S.current.appearanceSetting,
                leading: Icons.color_lens_outlined,
                showLeading: true,
                topRadius: true,
                bottomRadius: true,
                onTap: () {
                  RouteUtil.pushPanelCupertinoRoute(
                      context, const AppearanceSettingScreen());
                },
              ),
              const SizedBox(height: 10),
              ItemBuilder.buildEntryItem(
                context: context,
                title: "网络",
                leading: Icons.network_check_rounded,
                showLeading: true,
                topRadius: true,
                bottomRadius: true,
                onTap: () {
                  RouteUtil.pushPanelCupertinoRoute(
                      context, const NetworkSettingScreen());
                },
              ),
              const SizedBox(height: 10),
              ItemBuilder.buildEntryItem(
                context: context,
                title: S.current.safeSetting,
                leading: Icons.privacy_tip_outlined,
                showLeading: true,
                topRadius: true,
                bottomRadius: true,
                onTap: () {
                  RouteUtil.pushPanelCupertinoRoute(
                      context, const SafeSettingScreen());
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
