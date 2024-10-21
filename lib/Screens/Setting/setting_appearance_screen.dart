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

import 'package:twitee/Screens/Setting/select_font_screen.dart';
import 'package:twitee/Screens/Setting/select_theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Resources/fonts.dart';
import '../../Resources/theme_color_data.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/enums.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/route_util.dart';
import '../../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../../Widgets/BottomSheet/list_bottom_sheet.dart';
import '../../Widgets/General/EasyRefresh/easy_refresh.dart';
import '../../Widgets/Item/item_builder.dart';
import '../../generated/l10n.dart';

class AppearanceSettingScreen extends StatefulWidget {
  const AppearanceSettingScreen({super.key});

  static const String routeName = "/setting/appearance";

  @override
  State<AppearanceSettingScreen> createState() =>
      _AppearanceSettingScreenState();
}

class _AppearanceSettingScreenState extends State<AppearanceSettingScreen>
    with TickerProviderStateMixin {
  bool _enableLandscapeInTablet =
      HiveUtil.getBool(HiveUtil.enableLandscapeInTabletKey, defaultValue: true);
  bool enableFrostedGlassEffect = HiveUtil.getBool(
      HiveUtil.enableFrostedGlassEffectKey,
      defaultValue: false);
  bool hideAppbarWhenScrolling =
      HiveUtil.getBool(HiveUtil.hideAppbarWhenScrollingKey);
  bool hideBottombarWhenScrolling =
      HiveUtil.getBool(HiveUtil.hideBottombarWhenScrollingKey);
  final GlobalKey _setAutoBackupPasswordKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  scrollToSetAutoBackupPassword() {
    if (_setAutoBackupPasswordKey.currentContext != null) {
      Scrollable.ensureVisible(
        _setAutoBackupPasswordKey.currentContext!,
        duration: const Duration(milliseconds: 500),
      );
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Scaffold(
        appBar: ResponsiveUtil.isLandscape()
            ? ItemBuilder.buildSimpleAppBar(
                title: S.current.appearanceSetting,
                context: context,
                transparent: true,
              )
            : ItemBuilder.buildAppBar(
                context: context,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                leading: Icons.arrow_back_rounded,
                onLeadingTap: () {
                  Navigator.pop(context);
                },
                title: Text(
                  S.current.appearanceSetting,
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
              ..._apperanceSettings(),
              if (ResponsiveUtil.isMobile()) ..._mobileSettings(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  _apperanceSettings() {
    return [
      Selector<AppProvider, ActiveThemeMode>(
        selector: (context, appProvider) => appProvider.themeMode,
        builder: (context, themeMode, child) => ItemBuilder.buildEntryItem(
          context: context,
          title: S.current.themeMode,
          topRadius: true,
          tip: AppProvider.getThemeModeLabel(themeMode),
          onTap: () {
            BottomSheetBuilder.showListBottomSheet(
              context,
              (context) => TileList.fromOptions(
                AppProvider.getSupportedThemeMode(),
                (item2) {
                  appProvider.themeMode = item2;
                  Navigator.pop(context);
                },
                selected: themeMode,
                context: context,
                title: S.current.chooseThemeMode,
                onCloseTap: () => Navigator.pop(context),
              ),
            );
          },
        ),
      ),
      Selector<AppProvider, ThemeColorData>(
        selector: (context, appProvider) => appProvider.lightTheme,
        builder: (context, lightTheme, child) =>
            Selector<AppProvider, ThemeColorData>(
          selector: (context, appProvider) => appProvider.darkTheme,
          builder: (context, darkTheme, child) => ItemBuilder.buildEntryItem(
            context: context,
            title: S.current.selectTheme,
            tip: "${lightTheme.intlName}/${darkTheme.intlName}",
            onTap: () {
              RouteUtil.pushCupertinoRoute(context, const SelectThemeScreen());
            },
          ),
        ),
      ),
      Selector<AppProvider, CustomFont>(
        selector: (context, appProvider) => appProvider.currentFont,
        builder: (context, currentFont, child) => ItemBuilder.buildEntryItem(
          context: context,
          title: S.current.chooseFontFamily,
          tip: currentFont.intlFontName,
          bottomRadius: true,
          onTap: () {
            RouteUtil.pushCupertinoRoute(context, const SelectFontScreen());
          },
        ),
      ),
    ];
  }

  _mobileSettings() {
    return [
      const SizedBox(height: 10),
      ItemBuilder.buildCaptionItem(
          context: context, title: S.current.mobileSetting),
      if (ResponsiveUtil.isLandscapeTablet())
        ItemBuilder.buildRadioItem(
          value: _enableLandscapeInTablet,
          context: context,
          title: S.current.useDesktopLayoutWhenLandscape,
          description: S.current.haveToRestartWhenChange,
          onTap: () {
            setState(() {
              _enableLandscapeInTablet = !_enableLandscapeInTablet;
              appProvider.enableLandscapeInTablet = _enableLandscapeInTablet;
            });
          },
        ),
      ItemBuilder.buildRadioItem(
        context: context,
        value: enableFrostedGlassEffect,
        title: S.current.enableFrostedGlassEffect,
        onTap: () {
          setState(() {
            enableFrostedGlassEffect = !enableFrostedGlassEffect;
            appProvider.enableFrostedGlassEffect = enableFrostedGlassEffect;
          });
        },
      ),
      ItemBuilder.buildRadioItem(
        context: context,
        value: hideAppbarWhenScrolling,
        title: S.current.hideAppbarWhenScrolling,
        onTap: () {
          setState(() {
            hideAppbarWhenScrolling = !hideAppbarWhenScrolling;
            appProvider.hideAppbarWhenScrolling = hideAppbarWhenScrolling;
          });
        },
      ),
      ItemBuilder.buildRadioItem(
        context: context,
        value: hideBottombarWhenScrolling,
        bottomRadius: true,
        title: S.current.hideBottombarWhenScrolling,
        onTap: () {
          setState(() {
            hideBottombarWhenScrolling = !hideBottombarWhenScrolling;
            appProvider.hideBottombarWhenScrolling = hideBottombarWhenScrolling;
          });
        },
      ),
    ];
  }
}
