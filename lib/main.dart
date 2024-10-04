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

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive/hive.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';
import 'package:twitee/Database/database_manager.dart';
import 'package:twitee/Screens/Lock/pin_verify_screen.dart';
import 'package:twitee/Utils/app_provider.dart';
import 'package:twitee/Utils/biometric_util.dart';
import 'package:twitee/Utils/file_util.dart';
import 'package:twitee/Utils/hive_util.dart';
import 'package:twitee/Utils/proxy_util.dart';
import 'package:twitee/Utils/request_util.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:window_manager/window_manager.dart';

import './Utils/ilogger.dart';
import 'Resources/fonts.dart';
import 'Screens/main_screen.dart';
import 'Utils/constant.dart';
import 'Utils/notification_util.dart';
import 'Utils/responsive_util.dart';
import 'Utils/utils.dart';
import 'Widgets/Custom/keyboard_handler.dart';
import 'generated/l10n.dart';
import 'package:video_player_win/video_player_win_plugin.dart';

const List<String> kWindowsSchemes = ["twitee", "com.cloudchewie.twitee"];

const String kWindowSingleInstanceName = "twitee_singleinstance";

Future<void> main(List<String> args) async {
  runMyApp(args);
}

Future<void> runMyApp(List<String> args) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await initApp(widgetsBinding);
  late Widget home;
  if (HiveUtil.canGuestureLock()) {
    home = const PinVerifyScreen(
      isModal: true,
      autoAuth: true,
      jumpToMain: true,
      showWindowTitle: true,
    );
  } else {
    home = MainScreen(key: mainScreenKey);
  }
  runApp(MyApp(home: KeyboardHandler(key: keyboardHandlerKey, child: home)));
  FlutterNativeSplash.remove();
}

Future<void> initApp(WidgetsBinding widgetsBinding) async {
  FlutterError.onError = onError;
  imageCache.maximumSizeBytes = 1024 * 1024 * 1024 * 2;
  PaintingBinding.instance.imageCache.maximumSizeBytes = 1024 * 1024 * 1024 * 2;
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Hive.defaultDirectory = await FileUtil.getHiveDir();
  if (HiveUtil.isFirstLogin()) {
    await HiveUtil.initConfig();
    HiveUtil.setFirstLogin();
  }
  if (haveMigratedToSupportDirectory) {
    HiveUtil.put(HiveUtil.haveMigratedToSupportDirectoryKey, true);
  }
  HiveUtil.put(
      HiveUtil.oldVersionKey, (await PackageInfo.fromPlatform()).version);
  await DatabaseManager.initDataBase();
  NotificationUtil.init();
  await BiometricUtil.initStorage();
  await RequestUtil.init();
  await ResponsiveUtil.init();
  await ProxyUtil.refresh();
  if (ResponsiveUtil.isAndroid()) {
    await initDisplayMode();
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  if (ResponsiveUtil.isDesktop()) {
    await initWindow();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    LaunchAtStartup.instance.setup(
      appName: packageInfo.appName,
      appPath: Platform.resolvedExecutable,
    );
    await LocalNotifier.instance.setup(
      appName: packageInfo.appName,
      shortcutPolicy: ShortcutPolicy.requireCreate,
    );
    HiveUtil.put(HiveUtil.launchAtStartupKey,
        await LaunchAtStartup.instance.isEnabled());
    for (String scheme in kWindowsSchemes) {
      await protocolHandler.register(scheme);
    }
    await HotKeyManager.instance.unregisterAll();
    if (ResponsiveUtil.isWindows()) {
      WindowsVideoPlayer.registerWith();
    }
  }
  CustomFont.downloadFont(showToast: false);
}

Future<void> initWindow() async {
  await windowManager.ensureInitialized();
  Offset position = HiveUtil.getWindowPosition();
  WindowOptions windowOptions = WindowOptions(
    size: HiveUtil.getWindowSize(),
    minimumSize: minimumSize,
    center: position == Offset.zero,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
    position: position,
  );
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
}

Future<void> initDisplayMode() async {
  await FlutterDisplayMode.setHighRefreshRate();
  await FlutterDisplayMode.setPreferredMode(await FlutterDisplayMode.preferred);
}

Future<void> onError(FlutterErrorDetails details) async {
  File errorFile = File(join(await FileUtil.getLogDir(), "error.log"));
  if (!errorFile.existsSync()) errorFile.createSync();
  errorFile.writeAsStringSync(details.toString(), mode: FileMode.append);
  if (details.stack != null) {
    Zone.current.handleUncaughtError(details.exception, details.stack!);
  }
}

class MyApp extends StatelessWidget {
  final Widget home;
  final String title;

  const MyApp({
    super.key,
    required this.home,
    this.title = 'Twitee',
  });

  moveToCenter(BuildContext context) async {
    if (!ResponsiveUtil.isDesktop()) return;
    Offset position = HiveUtil.getWindowPosition();
    Rect rect = await Utils.getWindowRect(context);
    if (!rect.contains(position)) {
      windowManager.setAlignment(Alignment.center);
    }
  }

  @override
  Widget build(BuildContext context) {
    moveToCenter(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: appProvider),
      ],
      child: Consumer<AppProvider>(
        builder: (context, appProvider, child) =>
            MaterialApp(
              navigatorKey: globalNavigatorKey,
              navigatorObservers: [routeObserver],
              title: title,
              theme: appProvider.getBrightness() == null ||
                  appProvider.getBrightness() == Brightness.light
                  ? appProvider.lightTheme.toThemeData()
                  : appProvider.darkTheme.toThemeData(),
              darkTheme: appProvider.getBrightness() == null ||
                  appProvider.getBrightness() == Brightness.dark
                  ? appProvider.darkTheme.toThemeData()
                  : appProvider.lightTheme.toThemeData(),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: appProvider.locale,
              supportedLocales: S.delegate.supportedLocales,
              localeResolutionCallback: (locale, supportedLocales) {
                ILogger.debug("Twitee",
                    "Locale: $locale, Supported: $supportedLocales, appProvider.locale: ${appProvider
                        .locale}");
                if (appProvider.locale != null) {
                  return appProvider.locale;
                } else
                if (locale != null && supportedLocales.contains(locale)) {
                  return locale;
                } else {
                  try {
                    return Localizations.localeOf(context);
                  } catch (e, t) {
                    ILogger.error(
                        "Twitee",
                        "Failed to get locale by Localizations.localeOf(context)",
                        e,
                        t);
                    return const Locale("en", "US");
                  }
                }
              },
              home: ItemBuilder.buildContextMenuOverlay(home),
              builder: (context, widget) {
                return Overlay(
                  initialEntries: [
                    if (widget != null) ...[
                      OverlayEntry(
                        builder: (context) =>
                            MediaQuery(
                              data: MediaQuery.of(context)
                                  .copyWith(textScaler: TextScaler.noScaling),
                              child: widget,
                            ),
                      ),
                    ],
                  ],
                );
              },
            ),
      ),
    );
  }
}
