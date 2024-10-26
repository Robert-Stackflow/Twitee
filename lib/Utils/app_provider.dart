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
import 'package:twitee/Resources/theme_color_data.dart';
import 'package:twitee/Screens/Navigation/search_screen.dart';
import 'package:twitee/Screens/Setting/setting_general_screen.dart';
import 'package:twitee/Screens/main_screen.dart';
import 'package:twitee/Utils/Tuple/tuple.dart';
import 'package:twitee/Utils/proxy_util.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Widgets/Dialog/widgets/dialog_wrapper_widget.dart';

import '../Resources/fonts.dart';
import '../Screens/Navigation/community_screen.dart';
import '../Screens/Navigation/home_screen.dart';
import '../Screens/Navigation/list_screen.dart';
import '../Screens/panel_screen.dart';
import '../Widgets/Custom/keyboard_handler.dart';
import '../generated/l10n.dart';
import 'enums.dart';
import 'hive_util.dart';

GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> panelNavigatorKey = GlobalKey<NavigatorState>();

BuildContext get rootContext => globalNavigatorState!.context;

NavigatorState? get panelNavigatorState => panelNavigatorKey.currentState;
NavigatorState? get globalNavigatorState => globalNavigatorKey.currentState;

GlobalKey<GeneralSettingScreenState> generalSettingScreenKey =
    GlobalKey<GeneralSettingScreenState>();

GeneralSettingScreenState? get generalSettingScreenState =>
    generalSettingScreenKey.currentState;

GlobalKey<DialogWrapperWidgetState> dialogNavigatorKey =
    GlobalKey<DialogWrapperWidgetState>();

DialogWrapperWidgetState? get dialogNavigatorState =>
    dialogNavigatorKey.currentState;

GlobalKey<KeyboardHandlerState> keyboardHandlerKey =
    GlobalKey<KeyboardHandlerState>();

KeyboardHandlerState? get keyboardHandlerState =>
    keyboardHandlerKey.currentState;

GlobalKey<MainScreenState> mainScreenKey = GlobalKey<MainScreenState>();
GlobalKey<PanelScreenState> panelScreenKey = GlobalKey<PanelScreenState>();
GlobalKey<HomeScreenState> homeScreenKey = GlobalKey<HomeScreenState>();
GlobalKey<SearchScreenState> searchScreenKey = GlobalKey<SearchScreenState>();
GlobalKey<ListScreenState> listScreenKey = GlobalKey<ListScreenState>();
GlobalKey<CommunityScreenState> communityScreenKey =
    GlobalKey<CommunityScreenState>();

MainScreenState? get mainScreenState => mainScreenKey.currentState;
PanelScreenState? get panelScreenState => panelScreenKey.currentState;
HomeScreenState? get homeScreenState => homeScreenKey.currentState;
SearchScreenState? get searchScreenState => searchScreenKey.currentState;
ListScreenState? get listScreenState => listScreenKey.currentState;
CommunityScreenState? get communityScreenState =>
    communityScreenKey.currentState;

RouteObserver<PageRoute> routeObserver = RouteObserver();

AppProvider appProvider = AppProvider();

bool haveMigratedToSupportDirectory = false;

enum AutoLockTime {
  immediately,
  after30Seconds,
  after1Minute,
  after3Minutes,
  after5Minutes,
  after10Minutes;

  int get seconds {
    switch (this) {
      case AutoLockTime.immediately:
        return 0;
      case AutoLockTime.after30Seconds:
        return 30;
      case AutoLockTime.after1Minute:
        return 60;
      case AutoLockTime.after3Minutes:
        return 60 * 3;
      case AutoLockTime.after5Minutes:
        return 60 * 5;
      case AutoLockTime.after10Minutes:
        return 60 * 10;
    }
  }

  String get label {
    switch (this) {
      case AutoLockTime.immediately:
        return S.current.immediatelyLock;
      case AutoLockTime.after30Seconds:
        return S.current.after30SecondsLock;
      case AutoLockTime.after1Minute:
        return S.current.after1MinuteLock;
      case AutoLockTime.after3Minutes:
        return S.current.after3MinutesLock;
      case AutoLockTime.after5Minutes:
        return S.current.after5MinutesLock;
      case AutoLockTime.after10Minutes:
        return S.current.after10MinutesLock;
      default:
        return "";
    }
  }

  static List<Tuple2<String, AutoLockTime>> options() {
    return [
      Tuple2(S.current.immediatelyLock, AutoLockTime.immediately),
      Tuple2(S.current.after30SecondsLock, AutoLockTime.after30Seconds),
      Tuple2(S.current.after1MinuteLock, AutoLockTime.after1Minute),
      Tuple2(S.current.after3MinutesLock, AutoLockTime.after3Minutes),
      Tuple2(S.current.after5MinutesLock, AutoLockTime.after5Minutes),
      Tuple2(S.current.after10MinutesLock, AutoLockTime.after10Minutes),
    ];
  }
}

class AppProvider with ChangeNotifier {
  String currentDatabasePassword = "";

  String latestVersion = "";

  bool preventLock = false;

  bool shownShortcutHelp = false;

  bool _showNavigator = false;

  bool get showNavigator => _showNavigator;

  set showNavigator(bool value) {
    _showNavigator = value;
    notifyListeners();
  }

  ProxyConfig _proxyConfig =
      HiveUtil.getProxyConfig() ?? ProxyConfig(proxyType: ProxyType.NoProxy);

  ProxyConfig get proxyConfig => _proxyConfig;

  set proxyConfig(ProxyConfig value) {
    _proxyConfig = value;
    HiveUtil.setProxyConfig(value);
    notifyListeners();
    ProxyUtil.refresh();
  }

  SideBarChoice _sidebarChoice = SideBarChoice.fromString(
      HiveUtil.getString(HiveUtil.sidebarChoiceKey) ?? "");

  SideBarChoice get sidebarChoice => _sidebarChoice;

  set sidebarChoice(SideBarChoice value) {
    _sidebarChoice = value;
    HiveUtil.put(HiveUtil.sidebarChoiceKey, value.key);
    notifyListeners();
    panelScreenState?.jumpToPage(_sidebarChoice.index);
  }

  bool _enableLandscapeInTablet =
      HiveUtil.getBool(HiveUtil.enableLandscapeInTabletKey);

  bool get enableLandscapeInTablet => _enableLandscapeInTablet;

  set enableLandscapeInTablet(bool value) {
    _enableLandscapeInTablet = value;
    HiveUtil.put(HiveUtil.enableLandscapeInTabletKey, value).then((value) {
      ResponsiveUtil.restartApp(rootContext);
    });
    notifyListeners();
  }

  bool _canPopByProvider = false;

  bool get canPopByProvider => _canPopByProvider;

  set canPopByProvider(bool value) {
    _canPopByProvider = value;
    notifyListeners();
  }

  bool _enableFrostedGlassEffect = HiveUtil.getBool(
      HiveUtil.enableFrostedGlassEffectKey,
      defaultValue: false);

  bool get enableFrostedGlassEffect => _enableFrostedGlassEffect;

  set enableFrostedGlassEffect(bool value) {
    _enableFrostedGlassEffect = value;
    HiveUtil.put(HiveUtil.enableFrostedGlassEffectKey, value);
    notifyListeners();
  }

  bool _hideAppbarWhenScrolling =
      HiveUtil.getBool(HiveUtil.hideAppbarWhenScrollingKey);

  bool get hideAppbarWhenScrolling => _hideAppbarWhenScrolling;

  set hideAppbarWhenScrolling(bool value) {
    _hideAppbarWhenScrolling = value;
    HiveUtil.put(HiveUtil.hideAppbarWhenScrollingKey, value);
    notifyListeners();
  }

  bool _hideBottombarWhenScrolling =
      HiveUtil.getBool(HiveUtil.hideBottombarWhenScrollingKey);

  bool get hideBottombarWhenScrolling => _hideBottombarWhenScrolling;

  set hideBottombarWhenScrolling(bool value) {
    _hideBottombarWhenScrolling = value;
    HiveUtil.put(HiveUtil.hideBottombarWhenScrollingKey, value);
    notifyListeners();
  }

  Map<Type, Action<Intent>> _dynamicShortcuts =
      KeyboardHandlerState.mainScreenShortcuts;

  Map<Type, Action<Intent>> get dynamicShortcuts => _dynamicShortcuts;

  set dynamicShortcuts(Map<Type, Action<Intent>> value) {
    _dynamicShortcuts = value;
    notifyListeners();
  }

  ThemeColorData _lightTheme = HiveUtil.getLightTheme();

  ThemeColorData get lightTheme => _lightTheme;

  set lightTheme(ThemeColorData value) {
    _lightTheme = value;
    notifyListeners();
  }

  setLightTheme(int index) {
    HiveUtil.setLightTheme(index);
    _lightTheme = HiveUtil.getLightTheme();
    notifyListeners();
  }

  ThemeColorData _darkTheme = HiveUtil.getDarkTheme();

  ThemeColorData get darkTheme => _darkTheme;

  set darkTheme(ThemeColorData value) {
    _darkTheme = value;
    notifyListeners();
  }

  setDarkTheme(int index) {
    HiveUtil.setDarkTheme(index);
    _darkTheme = HiveUtil.getDarkTheme();
    notifyListeners();
  }

  CustomFont _currentFont = CustomFont.getCurrentFont();

  CustomFont get currentFont => _currentFont;

  set currentFont(CustomFont value) {
    _currentFont = value;
    notifyListeners();
  }

  Locale? _locale = HiveUtil.getLocale();

  Locale? get locale => _locale;

  set locale(Locale? value) {
    if (value != _locale) {
      _locale = value;
      notifyListeners();
      HiveUtil.setLocale(value);
    }
  }

  ActiveThemeMode _themeMode = HiveUtil.getThemeMode();

  ActiveThemeMode get themeMode => _themeMode;

  set themeMode(ActiveThemeMode value) {
    if (value != _themeMode) {
      _themeMode = value;
      notifyListeners();
      HiveUtil.setThemeMode(value);
    }
  }

  static String getThemeModeLabel(ActiveThemeMode themeMode) {
    switch (themeMode) {
      case ActiveThemeMode.system:
        return S.current.followSystem;
      case ActiveThemeMode.light:
        return S.current.lightTheme;
      case ActiveThemeMode.dark:
        return S.current.darkTheme;
    }
  }

  static List<Tuple2<String, ActiveThemeMode>> getSupportedThemeMode() {
    return [
      Tuple2(S.current.followSystem, ActiveThemeMode.system),
      Tuple2(S.current.lightTheme, ActiveThemeMode.light),
      Tuple2(S.current.darkTheme, ActiveThemeMode.dark),
    ];
  }

  AutoLockTime _autoLockTime = HiveUtil.getAutoLockTime();

  AutoLockTime get autoLockTime => _autoLockTime;

  set autoLockTime(AutoLockTime value) {
    if (value != _autoLockTime) {
      _autoLockTime = value;
      notifyListeners();
      HiveUtil.setAutoLockTime(value);
    }
  }

  Brightness? getBrightness() {
    if (_themeMode == ActiveThemeMode.system) {
      return null;
    } else {
      return _themeMode == ActiveThemeMode.light
          ? Brightness.light
          : Brightness.dark;
    }
  }
}
