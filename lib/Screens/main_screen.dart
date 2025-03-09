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

import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:flutter/material.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Screens/Detail/friendship_screen.dart';
import 'package:twitee/Screens/Detail/list_manage_screen.dart';
import 'package:twitee/Screens/Setting/about_setting_screen.dart';
import 'package:twitee/Screens/Setting/setting_navigation_screen.dart';
import 'package:twitee/Screens/panel_screen.dart';
import 'package:twitee/Utils/constant.dart';
import 'package:twitee/Utils/request_util.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Utils/user_util.dart';
import 'package:twitee/Widgets/Dialog/dialog_builder.dart';
import 'package:twitee/Widgets/Item/item_builder.dart';
import 'package:twitee/Widgets/Window/window_button.dart';
import 'package:twitee/Widgets/Window/window_caption.dart';
import 'package:window_manager/window_manager.dart';

import '../Api/user_api.dart';
import '../Resources/theme.dart';
import '../Utils/app_provider.dart';
import '../Utils/asset_util.dart';
import '../Utils/enums.dart';
import '../Utils/hive_util.dart';
import '../Utils/ilogger.dart';
import '../Utils/lottie_util.dart';
import '../Utils/route_util.dart';
import '../Utils/utils.dart';
import '../Widgets/BottomSheet/bottom_sheet_builder.dart';
import '../Widgets/General/EasyRefresh/easy_refresh.dart';
import '../Widgets/General/LottieCupertinoRefresh/lottie_cupertino_refresh.dart';
import '../Widgets/Scaffold/my_scaffold.dart';
import 'Detail/user_detail_screen.dart';
import 'Lock/pin_verify_screen.dart';
import 'Login/login_screen.dart';

const borderColor = Color(0xFF805306);
const backgroundStartColor = Color(0xFFFFD500);
const backgroundEndColor = Color(0xFFF6A00C);

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = "/";

  @override
  State<MainScreen> createState() => MainScreenState();
}

enum SideBarChoice {
  Home("home"),
  Search("search"),
  Bookmark("bookmark"),
  Like("like"),
  List("list"),
  Community("community"),
  Mention("mention"),
  Download("donwload");

  final String key;

  const SideBarChoice(this.key);

  static fromString(String string) {
    switch (string) {
      case "home":
        return SideBarChoice.Home;
      case "search":
        return SideBarChoice.Search;
      case "bookmark":
        return SideBarChoice.Bookmark;
      case "like":
        return SideBarChoice.Like;
      case "list":
        return SideBarChoice.List;
      case "community":
        return SideBarChoice.Community;
      case "mention":
        return SideBarChoice.Mention;
      case "download":
        return SideBarChoice.Download;
      default:
        return SideBarChoice.Home;
    }
  }

  static fromInt(int index) {
    switch (index) {
      case 0:
        return SideBarChoice.Home;
      case 1:
        return SideBarChoice.Search;
      case 2:
        return SideBarChoice.Bookmark;
      case 3:
        return SideBarChoice.Like;
      case 4:
        return SideBarChoice.List;
      case 5:
        return SideBarChoice.Community;
      case 6:
        return SideBarChoice.Mention;
      case 7:
        return SideBarChoice.Download;
      default:
        return SideBarChoice.Home;
    }
  }
}

class MainScreenState extends State<MainScreen>
    with
        WidgetsBindingObserver,
        TickerProviderStateMixin,
        TrayListener,
        ProtocolListener,
        WindowListener,
        AutomaticKeepAliveClientMixin {
  Timer? _timer;
  late AnimationController darkModeController;
  Widget? darkModeWidget;
  bool _isMaximized = false;
  bool _isStayOnTop = false;
  Orientation _oldOrientation = Orientation.portrait;
  bool expandSidebar =
      HiveUtil.getBool(HiveUtil.expandSidebarKey, defaultValue: false);
  UserInfo? _userInfo = HiveUtil.getUserInfo();

  @override
  void onWindowMinimize() {
    setTimer();
    super.onWindowMinimize();
  }

  @override
  void onWindowRestore() {
    super.onWindowRestore();
    cancleTimer();
  }

  @override
  void onWindowFocus() {
    cancleTimer();
    super.onWindowFocus();
  }

  @override
  Future<void> onWindowResize() async {
    super.onWindowResize();
    windowManager.setMinimumSize(minimumSize);
    HiveUtil.setWindowSize(await windowManager.getSize());
  }

  @override
  Future<void> onWindowResized() async {
    super.onWindowResized();
    HiveUtil.setWindowSize(await windowManager.getSize());
  }

  @override
  Future<void> onWindowMove() async {
    super.onWindowMove();
    HiveUtil.setWindowPosition(await windowManager.getPosition());
  }

  @override
  Future<void> onWindowMoved() async {
    super.onWindowMoved();
    HiveUtil.setWindowPosition(await windowManager.getPosition());
  }

  @override
  void onWindowEvent(String eventName) {
    super.onWindowEvent(eventName);
    if (eventName == "hide") {
      setTimer();
    }
  }

  @override
  void onWindowMaximize() {
    windowManager.setMinimumSize(minimumSize);
    setState(() {
      _isMaximized = true;
    });
  }

  @override
  void onWindowUnmaximize() {
    windowManager.setMinimumSize(minimumSize);
    setState(() {
      _isMaximized = false;
    });
  }

  void pushRootPage(Widget page) {
    Navigator.pushAndRemoveUntil(
        context, RouteUtil.getFadeRoute(page), (route) => false);
  }

  @override
  void onProtocolUrlReceived(String url) {
    ILogger.info("Twitee", "Protocol url received", url);
  }

  Future<void> fetchReleases() async {
    Utils.getReleases(
      context: context,
      showLoading: false,
      showUpdateDialog: HiveUtil.getBool(HiveUtil.autoCheckUpdateKey),
      showFailedToast: false,
      showLatestToast: false,
    );
  }

  fetchUserInfo() async {
    _userInfo = HiveUtil.getUserInfo();
    if (_userInfo == null) {
      return;
    }
    var res = await UserApi.getUserInfo(_userInfo!.screenName);
    if (res.success) {}
  }

  logout() async {
    _userInfo == null;
    setState(() {});
    panelScreenState?.logout();
  }

  login() {
    _userInfo = HiveUtil.getUserInfo();
    setState(() {});
    panelScreenState?.login();
  }

  @override
  void initState() {
    _oldOrientation = MediaQuery.of(rootContext).orientation;
    super.initState();
    if (ResponsiveUtil.isDesktop() && !ResponsiveUtil.isLinux()) {
      protocolHandler.addListener(this);
    }
    windowManager.addListener(this);
    WidgetsBinding.instance.addObserver(this);
    fetchReleases();
    darkModeController = AnimationController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      darkModeWidget = LottieUtil.load(
        LottieUtil.sunLight,
        size: 25,
        autoForward: !Utils.isDark(context),
        controller: darkModeController,
      );
      if (ResponsiveUtil.isDesktop()) {
        await Utils.initTray();
        trayManager.addListener(this);
        keyboardHandlerState?.focus();
      }
    });
    initGlobalConfig();
    fetchUserInfo();
  }

  initGlobalConfig() {
    if (ResponsiveUtil.isDesktop()) {
      windowManager
          .isAlwaysOnTop()
          .then((value) => setState(() => _isStayOnTop = value));
      windowManager
          .isMaximized()
          .then((value) => setState(() => _isMaximized = value));
    }
    ResponsiveUtil.checkSizeCondition();
    // EasyRefresh.defaultHeaderBuilder = () => LottieCupertinoHeader(
    //       backgroundColor: Theme.of(context).canvasColor,
    //       indicator:
    //           LottieUtil.load(LottieUtil.getLoadingPath(context), scale: 1.5),
    //       hapticFeedback: true,
    //       triggerOffset: 40,
    //     );
    EasyRefresh.defaultHeaderBuilder = () => MaterialHeader(
          backgroundColor: Theme.of(context).canvasColor,
          color: Theme.of(context).primaryColor,
        );
    EasyRefresh.defaultFooterBuilder = () => LottieCupertinoFooter(
          indicator:
              LottieUtil.load(LottieUtil.getLoadingPath(context), scale: 2.5),
        );
    Utils.setSafeMode(HiveUtil.getBool(HiveUtil.enableSafeModeKey,
        defaultValue: defaultEnableSafeMode));
  }

  Future<void> jumpToLock({
    bool autoAuth = false,
  }) async {
    pushRootPage(
      PinVerifyScreen(
        onSuccess: () {},
        showWindowTitle: true,
        isModal: true,
        autoAuth: autoAuth,
        jumpToMain: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Utils.setSafeMode(HiveUtil.getBool(HiveUtil.enableSafeModeKey,
        defaultValue: defaultEnableSafeMode));
    super.build(context);
    return OrientationBuilder(builder: (ctx, ori) {
      if (ori != _oldOrientation) {
        // globalNavigatorState?.popUntil((route) => route.isFirst);
      }
      _oldOrientation = ori;
      return _buildBodyByPlatform();
    });
  }

  goHome() {
    while (Navigator.of(rootContext).canPop()) {
      Navigator.of(rootContext).pop();
    }
    appProvider.canPopByProvider = false;
  }

  _buildBodyByPlatform() {
    if (!ResponsiveUtil.isLandscape()) {
      return _buildMobileBody();
    } else if (ResponsiveUtil.isMobile()) {
      return PopScope(
        canPop: false,
        onPopInvokedWithResult: (_, __) {
          MoveToBackground.moveTaskToBack();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(child: _buildDesktopBody()),
        ),
      );
    } else {
      return _buildDesktopBody();
    }
  }

  _buildMobileBody() {
    return PanelScreen(key: panelScreenKey);
  }

  _buildDesktopBody() {
    var leftPosWidget = Row(
      children: [
        _sideBar(leftPadding: 8, rightPadding: 8),
        Expanded(
          child: Stack(
            children: [
              _desktopMainContent(),
              Positioned(
                right: 0,
                child: _titleBar(),
              ),
            ],
          ),
        ),
      ],
    );
    return MyScaffold(
      resizeToAvoidBottomInset: false,
      body: leftPosWidget,
    );
  }

  changeMode() {
    if (Utils.isDark(context)) {
      appProvider.themeMode = ActiveThemeMode.light;
      darkModeController.forward();
    } else {
      appProvider.themeMode = ActiveThemeMode.dark;
      darkModeController.reverse();
    }
  }

  _buildAvatarContextMenuButtons() {
    return FlutterContextMenu(
      entries: [
        FlutterContextMenuItem(
          "个人资料",
          iconData: Icons.person_outline_rounded,
          onPressed: () async {
            panelScreenState
                ?.pushPage(UserDetailScreen(screenName: _userInfo!.screenName));
          },
        ),
        FlutterContextMenuItem(
          "社交网络",
          iconData: Icons.auto_awesome_outlined,
          onPressed: () async {
            panelScreenState
                ?.pushPage(FriendshipScreen(userId: _userInfo!.idStr));
          },
        ),
        FlutterContextMenuItem(
          "列表",
          iconData: Icons.featured_play_list_outlined,
          onPressed: () async {
            panelScreenState
                ?.pushPage(ListManageScreen(userId: _userInfo!.idStr));
          },
        ),
        FlutterContextMenuItem.divider(),
        FlutterContextMenuItem(
          "退出登录",
          status: MenuItemStatus.warning,
          iconData: Icons.logout_rounded,
          onPressed: () async {
            DialogBuilder.showConfirmDialog(
              context,
              title: "退出登录",
              message: "是否退出登录？",
              onTapConfirm: () async {
                await UserUtil.logout();
              },
            );
          },
        ),
      ],
    );
  }

  _sideBar({
    double leftPadding = 0,
    double rightPadding = 0,
  }) {
    return Container(
      width: 42 + leftPadding + rightPadding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border(right: MyTheme.borderSide),
      ),
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: Stack(
        children: [
          if (ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
          Selector<AppProvider, SideBarChoice>(
            selector: (context, appProvider) => appProvider.sidebarChoice,
            builder: (context, sidebarChoice, child) =>
                Selector<AppProvider, bool>(
              selector: (context, appProvider) => !appProvider.showNavigator,
              builder: (context, hideNavigator, child) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (ResponsiveUtil.isDesktop()) const SizedBox(height: 5),
                  if (ResponsiveUtil.isDesktop()) _buildLogo(),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected:
                        hideNavigator && sidebarChoice == SideBarChoice.Home,
                    icon: Icons.explore_outlined,
                    selectedIcon: Icons.explore_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.Home;
                      panelScreenState?.popAll();
                    },
                    iconSize: 24,
                  ),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected:
                        hideNavigator && sidebarChoice == SideBarChoice.Search,
                    icon: Icons.search_rounded,
                    selectedIcon: Icons.manage_search_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.Search;
                      panelScreenState?.popAll();
                    },
                  ),
                  // const SizedBox(height: 8),
                  // ToolButton(
                  //   context: context,
                  //   icon: Icons.timeline_outlined,
                  //   onPressed: () async {},
                  // ),
                  // const SizedBox(height: 8),
                  // ToolButton(
                  //   context: context,
                  //   icon: Icons.trending_up_rounded,
                  //   onPressed: () async {},
                  // ),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected: hideNavigator &&
                        sidebarChoice == SideBarChoice.Bookmark,
                    icon: Icons.bookmark_border_rounded,
                    selectedIcon: Icons.bookmark_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.Bookmark;
                      panelScreenState?.popAll();
                    },
                  ),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected:
                        hideNavigator && sidebarChoice == SideBarChoice.Like,
                    icon: Icons.favorite_border_rounded,
                    selectedIcon: Icons.favorite_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.Like;
                      panelScreenState?.popAll();
                    },
                  ),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected:
                        hideNavigator && sidebarChoice == SideBarChoice.List,
                    icon: Icons.featured_play_list_outlined,
                    selectedIcon: Icons.featured_play_list_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.List;
                      panelScreenState?.popAll();
                    },
                    iconSize: 20,
                  ),
                  const SizedBox(height: 8),
                  ToolButton(
                    context: context,
                    selected: hideNavigator &&
                        sidebarChoice == SideBarChoice.Community,
                    icon: Icons.people_alt_outlined,
                    selectedIcon: Icons.people_rounded,
                    onTap: () async {
                      appProvider.sidebarChoice = SideBarChoice.Community;
                      panelScreenState?.popAll();
                    },
                    iconSize: 20,
                  ),
                  // const SizedBox(height: 8),
                  // ToolButton(
                  //   context: context,
                  //   selected:
                  //       hideNavigator && sidebarChoice == SideBarChoice.Mention,
                  //   icon: Icons.notifications_none_rounded,
                  //   selectedIcon: Icons.notifications_rounded,
                  //   onTap: () async {
                  //     appProvider.sidebarChoice = SideBarChoice.Mention;
                  //     panelScreenState?.popAll();
                  //   },
                  // ),
                  // const SizedBox(height: 8),
                  // ToolButton(
                  //   context: context,
                  //   selected: hideNavigator &&
                  //       sidebarChoice == SideBarChoice.Download,
                  //   icon: Icons.save_alt_rounded,
                  //   onTap: () async {
                  //     appProvider.sidebarChoice = SideBarChoice.Download;
                  //     panelScreenState?.popAll();
                  //   },
                  // ),
                  const Spacer(),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () async {
                      String? csrfToken = await RequestUtil.getCsrfToken();
                      if (Utils.isEmpty(csrfToken)) {
                        RouteUtil.pushDialogRoute(
                            context, const LoginByPasswordScreen());
                      } else {
                        BottomSheetBuilder.showContextMenu(
                            context, _buildAvatarContextMenuButtons());
                      }
                    },
                    child: ItemBuilder.buildAvatar(
                      context: context,
                      imageUrl: TweetUtil.getBigAvatarUrl(
                              _userInfo?.profileImageUrlHttps) ??
                          AssetUtil.avatar,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ItemBuilder.buildDynamicToolButton(
                    context: context,
                    iconBuilder: (colors) => darkModeWidget ?? emptyWidget,
                    onTap: changeMode,
                    onChangemode: (context, themeMode, child) {
                      if (darkModeController.duration != null) {
                        if (themeMode == ActiveThemeMode.light) {
                          darkModeController.forward();
                        } else if (themeMode == ActiveThemeMode.dark) {
                          darkModeController.reverse();
                        } else {
                          if (Utils.isDark(context)) {
                            darkModeController.reverse();
                          } else {
                            darkModeController.forward();
                          }
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 4),
                  ToolButton(
                    context: context,
                    icon: Icons.token_outlined,
                    onTap: () async {
                      RouteUtil.pushPanelCupertinoRoute(
                          context, const SettingNavigationScreen());
                    },
                  ),
                  const SizedBox(height: 4),
                  ToolButton(
                    context: context,
                    icon: Icons.help_outline_rounded,
                    onTap: () async {
                      RouteUtil.pushPanelCupertinoRoute(
                          context, const AboutSettingScreen());
                    },
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildLogo({
    double size = 50,
  }) {
    return IgnorePointer(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Utils.isDark(context)
                  ? 'assets/logo-light-transparent.png'
                  : 'assets/logo-transparent.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  _titleBar() {
    return (ResponsiveUtil.isDesktop())
        ? ItemBuilder.buildWindowTitle(
            context,
            backgroundColor: Colors.transparent,
            isStayOnTop: _isStayOnTop,
            isMaximized: _isMaximized,
            onStayOnTopTap: () {
              setState(() {
                _isStayOnTop = !_isStayOnTop;
                windowManager.setAlwaysOnTop(_isStayOnTop);
              });
            },
            rightButtons: [],
          )
        : emptyWidget;
  }

  _desktopMainContent({
    double leftMargin = 0,
    double rightMargin = 0,
  }) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      child: PanelScreen(key: panelScreenKey),
    );
  }

  void cancleTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void setTimer() {
    _timer = Timer(
      Duration(seconds: appProvider.autoLockTime.seconds),
      () {
        if (!appProvider.preventLock && HiveUtil.shouldAutoLock()) {
          jumpToLock();
        }
      },
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        cancleTimer();
        break;
      case AppLifecycleState.paused:
        setTimer();
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  void dispose() {
    protocolHandler.removeListener(this);
    trayManager.removeListener(this);
    WidgetsBinding.instance.removeObserver(this);
    windowManager.removeListener(this);
    darkModeController.dispose();
    super.dispose();
  }

  @override
  void onTrayIconMouseDown() {
    Utils.displayApp();
  }

  @override
  void onTrayIconRightMouseDown() {
    trayManager.popUpContextMenu();
  }

  @override
  void onTrayIconRightMouseUp() {}

  @override
  Future<void> onTrayMenuItemClick(MenuItem menuItem) async {
    Utils.processTrayMenuItemClick(context, menuItem, false);
  }

  @override
  bool get wantKeepAlive => true;
}
