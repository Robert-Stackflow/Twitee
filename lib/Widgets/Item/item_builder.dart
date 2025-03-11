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
import 'dart:math';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:group_button/group_button.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:twitee/Models/user_info.dart';
import 'package:twitee/Resources/fonts.dart';
import 'package:twitee/Resources/theme_color_data.dart';
import 'package:twitee/Utils/image_util.dart';
import 'package:twitee/Utils/lottie_util.dart';
import 'package:twitee/Utils/route_util.dart';
import 'package:twitee/Utils/tweet_util.dart';
import 'package:twitee/Widgets/Selectable/my_context_menu_item.dart';
import 'package:window_manager/window_manager.dart';

import '../../Openapi/models/media.dart';
import '../../Resources/colors.dart';
import '../../Resources/theme.dart';
import '../../Screens/Detail/search_result_screen.dart';
import '../../Utils/app_provider.dart';
import '../../Utils/asset_util.dart';
import '../../Utils/color_util.dart';
import '../../Utils/constant.dart';
import '../../Utils/enums.dart';
import '../../Utils/hive_util.dart';
import '../../Utils/itoast.dart';
import '../../Utils/responsive_util.dart';
import '../../Utils/uri_util.dart';
import '../../Utils/utils.dart';
import '../../generated/l10n.dart';
import '../Custom/hero_media_view_screen.dart';
import '../Custom/hero_photo_view_screen.dart';
import '../Scaffold/my_appbar.dart';
import '../Scaffold/my_popupmenu.dart';
import '../Scaffold/my_tooltip.dart';
import '../Selectable/my_selectable_region.dart';
import '../Selectable/my_selection_area.dart';
import '../Selectable/my_selection_toolbar.dart';
import '../Selectable/selection_transformer.dart';
import '../Window/window_button.dart';
import '../Window/window_caption.dart';
import 'input_item.dart';
import 'my_cached_network_image.dart';

enum TailingType { none, clear, password, icon, text, widget }

class ItemBuilder {
  static Widget getFilterWidget({
    Widget? child,
    double sigmaX = 12,
    double sigmaY = 12,
    bool hasColor = true,
    EdgeInsets? padding,
  }) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          padding: padding,
          child: child,
        ),
      ),
    );
  }

  static PreferredSize buildDesktopAppBar({
    required BuildContext context,
    String title = "",
    Widget? titleWidget,
    bool showBack = false,
    bool showMenu = false,
    bool transparent = false,
    double spacing = 10,
    bool centerInMobile = false,
    Function()? onBackTap,
    List<Widget> actions = const [],
    double leftPadding = 0,
    double rightPadding = 0,
    bool? showBorder,
    Widget? bottom,
    double? bottomHeight,
  }) {
    UserInfo? info = HiveUtil.getUserInfo();
    Widget? avatar = info != null
        ? Container(
            margin: const EdgeInsets.symmetric(vertical: 10.5)
                .add(const EdgeInsets.only(right: 3)),
            child: ItemBuilder.buildAvatar(
              context: context,
              imageUrl: TweetUtil.getBigAvatarUrl(info.profileImageUrlHttps) ??
                  AssetUtil.avatar,
              size: 32,
              onTap: () => panelScreenState?.openDrawer(),
            ),
          )
        : null;
    late PreferredSize topWidget;
    if (ResponsiveUtil.isLandscape()) {
      bool hasLeftButton =
          showBack || (showMenu && !ResponsiveUtil.isLandscape());
      var finalTitle = titleWidget ??
          Expanded(
            child: IgnorePointer(
              child: Container(
                margin: const EdgeInsets.only(right: 173),
                child: Text(
                  title,
                  style: MyTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
      topWidget = PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Container(
          height: 56,
          decoration: BoxDecoration(
            color: MyTheme.appBarAndTabBarBackground,
            border: showBorder ?? true ? MyTheme.bottomBorder : null,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                if (ResponsiveUtil.isDesktop()) const WindowMoveHandle(),
                Center(
                  child: Row(
                    mainAxisAlignment:
                        ResponsiveUtil.isMobile() && centerInMobile
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                    children: [
                      if (showMenu && !ResponsiveUtil.isLandscape())
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: ItemBuilder.buildIconButton(
                            context: context,
                            icon: info != null
                                ? avatar
                                : const Icon(Icons.menu_rounded),
                            onTap: () => panelScreenState?.openDrawer(),
                          ),
                        ),
                      if (showBack)
                        ResponsiveUtil.isLandscape()
                            ? Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: ToolButton(
                                  context: context,
                                  onTap: onBackTap ??
                                      () => panelScreenState?.popPage(),
                                  iconBuilder: (_) =>
                                      const Icon(Icons.arrow_back_rounded),
                                ),
                              )
                            : Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: ItemBuilder.buildIconButton(
                                  context: context,
                                  icon: const Icon(Icons.arrow_back_rounded),
                                  onTap: () => panelScreenState?.popPage(),
                                ),
                              ),
                      if ((!(titleWidget != null &&
                                  ResponsiveUtil.isLandscape()) &&
                              !hasLeftButton) ||
                          hasLeftButton)
                        SizedBox(width: spacing),
                      ResponsiveUtil.isLandscape()
                          ? finalTitle
                          : Expanded(child: finalTitle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      topWidget = PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Container(
          decoration: BoxDecoration(
            color: MyTheme.background,
            border: showBorder ?? false ? MyTheme.bottomBorder : null,
          ),
          child: ItemBuilder.buildAppBar(
            context: context,
            leading: showMenu ? Icons.menu_rounded : Icons.arrow_back_rounded,
            leadingWidget: showMenu && info != null ? avatar : null,
            onLeadingTap: showMenu
                ? () => panelScreenState?.openDrawer()
                : onBackTap ?? () => panelScreenState?.popPage(),
            backgroundColor: MyTheme.itemBackground,
            leftSpacing: 8,
            leadingTitleSpacing: spacing,
            actions: [
              ...actions,
              SizedBox(width: rightPadding),
            ],
            center: centerInMobile,
            title: titleWidget != null
                ? Container(
                    margin: EdgeInsets.only(left: leftPadding),
                    constraints: const BoxConstraints(maxHeight: 60),
                    child: titleWidget,
                  )
                : Container(
                    margin: EdgeInsets.only(left: leftPadding),
                    child: Text(
                      title,
                      style: MyTheme.titleMedium.apply(
                        fontWeightDelta: 2,
                      ),
                    ),
                  ),
          ),
        ),
      );
    }
    return bottom != null && bottomHeight != null
        ? PreferredSize(
            preferredSize: Size.fromHeight(56 + bottomHeight),
            child: Column(
              children: [
                topWidget,
                bottom,
              ],
            ),
          )
        : topWidget;
  }

  static buildSimpleAppBar({
    String title = "",
    Key? key,
    IconData leading = Icons.arrow_back_rounded,
    List<Widget>? actions,
    required BuildContext context,
    bool transparent = false,
    bool showLeading = true,
    Color? background,
  }) {
    bool finalShowLeading = showLeading && !ResponsiveUtil.isLandscape();
    return PreferredSize(
      preferredSize: const Size(0, 56),
      child: Selector<AppProvider, bool>(
        selector: (context, provider) => provider.enableFrostedGlassEffect,
        builder: (context, enableFrostedGlassEffect, child) => MyAppBar(
          key: key,
          primary: !ResponsiveUtil.isWideLandscape(),
          backgroundColor: transparent
              ? background ??
                  Theme.of(context)
                      .scaffoldBackgroundColor
                      .withOpacity(enableFrostedGlassEffect ? 0.2 : 1)
              : background ??
                  Theme.of(context)
                      .appBarTheme
                      .backgroundColor!
                      .withOpacity(enableFrostedGlassEffect ? 0.2 : 1),
          useBackdropFilter: enableFrostedGlassEffect,
          elevation: 0,
          scrolledUnderElevation: 0,
          leadingWidth: finalShowLeading ? 56.0 : 0.0,
          automaticallyImplyLeading: false,
          leading: finalShowLeading
              ? Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: buildIconButton(
                    context: context,
                    icon:
                        Icon(leading, color: Theme.of(context).iconTheme.color),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              : null,
          title: title.isNotEmpty
              ? Container(
                  margin: EdgeInsets.only(left: finalShowLeading ? 5 : 20),
                  child: Text(
                    title,
                    style: MyTheme.titleMedium.apply(
                      fontWeightDelta: 2,
                    ),
                  ),
                )
              : emptyWidget,
          actions: actions,
        ),
      ),
    );
  }

  static buildAppBar({
    Widget? title,
    Key? key,
    bool center = false,
    IconData? leading,
    Widget? leadingWidget,
    Color? leadingColor,
    Function()? onLeadingTap,
    Color? backgroundColor,
    List<Widget>? actions,
    required BuildContext context,
    bool transparent = false,
    double leftSpacing = 10,
    double leadingTitleSpacing = 10,
    bool forceShowClose = false,
  }) {
    bool showLeading =
        leading != null && (!ResponsiveUtil.isLandscape() || forceShowClose);
    // center = ResponsiveUtil.isDesktop() ? false : center;
    return PreferredSize(
      preferredSize: const Size(0, kToolbarHeight),
      child: Selector<AppProvider, bool>(
        selector: (context, provider) => provider.enableFrostedGlassEffect,
        builder: (context, enableFrostedGlassEffect, child) => MyAppBar(
          key: key,
          primary: !ResponsiveUtil.isWideLandscape(),
          backgroundColor: transparent
              ? Colors.transparent
              : backgroundColor
                      ?.withOpacity(enableFrostedGlassEffect ? 0.2 : 1) ??
                  Theme.of(context)
                      .appBarTheme
                      .backgroundColor!
                      .withOpacity(enableFrostedGlassEffect ? 0.2 : 1),
          useBackdropFilter: enableFrostedGlassEffect,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          leadingWidth: showLeading ? 56.0 : 0.0,
          leading: showLeading
              ? Container(
                  margin: EdgeInsets.only(left: leftSpacing),
                  child: leadingWidget ??
                      ItemBuilder.buildIconButton(
                        context: context,
                        icon: Icon(leading,
                            color: leadingColor ??
                                Theme.of(context).iconTheme.color),
                        onTap: onLeadingTap,
                      ),
                )
              : null,
          title: center
              ? Center(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: center
                              ? 0
                              : (showLeading ? leadingTitleSpacing : 20)),
                      child: title))
              : Container(
                  margin: EdgeInsets.only(
                      left: center
                          ? 0
                          : (showLeading ? leadingTitleSpacing : 20)),
                  child: title,
                ),
          actions: actions,
        ),
      ),
    );
  }

  static buildSliverAppBar({
    required BuildContext context,
    Widget? backgroundWidget,
    List<Widget>? actions,
    Widget? flexibleSpace,
    PreferredSizeWidget? bottom,
    Widget? title,
    bool center = false,
    bool floating = false,
    bool pinned = false,
    Widget? leading,
    Color? leadingColor,
    Function()? onLeadingTap,
    Color? backgroundColor,
    double expandedHeight = 320,
    double? collapsedHeight,
    SystemUiOverlayStyle? systemOverlayStyle,
    bool useBackdropFilter = false,
  }) {
    bool showLeading = !ResponsiveUtil.isLandscape();
    center = ResponsiveUtil.isLandscape() ? false : center;
    return MySliverAppBar(
      useBackdropFilter: useBackdropFilter,
      systemOverlayStyle: systemOverlayStyle,
      expandedHeight: expandedHeight,
      collapsedHeight: collapsedHeight ??
          max(100, kToolbarHeight + MediaQuery.of(context).padding.top),
      pinned: pinned,
      floating: floating,
      leadingWidth: showLeading ? 56 : 0,
      leading: showLeading
          ? Container(
              margin: const EdgeInsets.only(left: 0),
              child: ItemBuilder.buildIconButton(
                context: context,
                icon: leading,
                onTap: onLeadingTap,
              ),
            )
          : null,
      automaticallyImplyLeading: false,
      backgroundWidget: backgroundWidget,
      actions: actions,
      title: showLeading
          ? center
              ? Center(child: title)
              : title ?? emptyWidget
          : center
              ? Center(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: title,
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: title,
                ),
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor:
          backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
    );
  }

  static buildTabBar(
    BuildContext context,
    TabController tabController,
    List<Widget> tabs, {
    double? height = 56,
    EdgeInsetsGeometry? padding,
    ValueChanged<int>? onTap,
    bool showBorder = false,
    Color? background,
    double? width,
    bool forceUnscrollable = false,
  }) {
    padding ??= ResponsiveUtil.isLandscape()
        ? const EdgeInsets.symmetric(horizontal: 10)
        : const EdgeInsets.symmetric(horizontal: 10);
    bool scrollable = false;
    if (ResponsiveUtil.isLandscape()) {
      scrollable = true;
    } else {
      if (tabs.length > 3) {
        scrollable = true;
      } else {
        scrollable = false;
      }
    }
    scrollable = forceUnscrollable ? false : scrollable;
    var titleMedium = MyTheme.titleMedium;
    return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 56),
      child: Container(
        height: 56,
        width: width,
        decoration: BoxDecoration(
          color: background ?? MyTheme.appBarAndTabBarBackground,
          border: showBorder ? MyTheme.bottomBorder : null,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TabBar(
            controller: tabController,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            tabs: tabs,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerHeight: 0,
            padding: padding,
            isScrollable: scrollable,
            tabAlignment: scrollable ? TabAlignment.start : null,
            physics: const BouncingScrollPhysics(),
            labelStyle: titleMedium.apply(
              fontWeightDelta: 2,
              // color: ColorUtil.getComplementaryColor(primaryColor),
              color: Utils.isDark(context)
                  ? Colors.black
                  : const Color(0xFFF1F1F1),
            ),
            unselectedLabelStyle: titleMedium.apply(color: Colors.grey),
            indicator: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            // CustomTabIndicator(borderColor: Theme.of(context).primaryColor),
            onTap: onTap,
          ),
        ),
      ),
    );
  }

  static buildGroupTile({
    required BuildContext context,
    String title = '',
    required List<String> buttons,
    GroupButtonController? controller,
    EdgeInsets? padding,
    bool disabled = false,
    bool enableDeselect = false,
    bool constraintWidth = true,
    Function(dynamic value, int index, bool isSelected)? onSelected,
  }) {
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(fontWeightDelta: 2, fontSizeDelta: -2),
              ),
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: buildGroupButtons(
              buttons: buttons,
              disabled: disabled,
              controller: controller,
              constraintWidth: constraintWidth,
              radius: 8,
              enableDeselect: enableDeselect,
              mainGroupAlignment: MainGroupAlignment.start,
              onSelected: onSelected,
            ),
          ),
        ],
      ),
    );
  }

  static buildGroupButtons({
    required List<String> buttons,
    GroupButtonController? controller,
    bool enableDeselect = false,
    bool disabled = false,
    bool isRadio = true,
    double? radius,
    MainGroupAlignment mainGroupAlignment = MainGroupAlignment.center,
    bool constraintWidth = true,
    Function(dynamic value, int index, bool isSelected)? onSelected,
  }) {
    return GroupButton(
      isRadio: isRadio,
      enableDeselect: enableDeselect,
      options: GroupButtonOptions(
        mainGroupAlignment: mainGroupAlignment,
        runSpacing: 6,
        spacing: 6,
      ),
      disabled: disabled,
      onSelected: onSelected,
      maxSelected: isRadio ? 1 : buttons.length,
      controller: controller,
      buttons: buttons,
      buttonBuilder: (selected, label, context, onTap, disabled) {
        return SizedBox(
          width: constraintWidth ? 80 : null,
          child: ItemBuilder.buildRoundButton(
            context,
            text: label,
            onTap: onTap,
            feedback: true,
            radius: radius ?? 50,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            background: selected
                ? disabled
                    ? Theme.of(context).primaryColor.withAlpha(80)
                    : Theme.of(context).primaryColor
                : null,
            textStyle: MyTheme.titleSmall
                .apply(fontSizeDelta: 2, color: selected ? Colors.white : null),
          ),
        );
      },
    );
  }

  static buildLoadMoreNotification({
    Function()? onLoad,
    required Widget child,
    required bool noMore,
  }) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification.depth != 0) {
          return false;
        }
        if (!noMore &&
            notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - kLoadExtentOffset) {
          onLoad?.call();
        }
        return false;
      },
      child: child,
    );
  }

  static Widget buildBlankIconButton(BuildContext context) {
    return Visibility(
      visible: false,
      maintainAnimation: true,
      maintainState: true,
      maintainSize: true,
      child: ItemBuilder.buildIconButton(
          context: context,
          icon: Icon(Icons.more_vert_rounded,
              color: Theme.of(context).iconTheme.color),
          onTap: () {}),
    );
  }

  static Widget buildIconButton({
    required BuildContext context,
    required dynamic icon,
    required Function()? onTap,
    Function()? onLongPress,
    Color? background,
    EdgeInsets? padding,
    int quarterTurns = 0,
  }) {
    return Material(
      color: background ?? Colors.transparent,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          padding: padding ?? const EdgeInsets.all(8),
          child: RotatedBox(
              quarterTurns: quarterTurns,
              child: IconTheme(
                  data: Theme.of(context).iconTheme,
                  child: icon ?? emptyWidget)),
        ),
      ),
    );
  }

  static Widget buildRoundIconButton({
    required BuildContext context,
    required dynamic icon,
    required Function()? onTap,
    Function()? onLongPress,
    Color? normalBackground,
    double radius = 8,
    EdgeInsets? padding,
    bool disabled = false,
    BoxDecoration? decoration,
  }) {
    return Material(
      color: disabled
          ? Colors.transparent
          : normalBackground ?? Colors.transparent,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          decoration: decoration,
          padding: padding ?? const EdgeInsets.all(10),
          child: icon ?? emptyWidget,
        ),
      ),
    );
  }

  static Widget buildShadowIconButton({
    required BuildContext context,
    required dynamic icon,
    required Function()? onTap,
    Function()? onLongPress,
    double radius = 8,
    EdgeInsets? padding,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor, width: 0.8),
        borderRadius: BorderRadius.circular(radius + 1),
        boxShadow: MyTheme.defaultBoxShadow,
      ),
      child: Material(
        color: Theme.of(context).canvasColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            padding: padding ?? const EdgeInsets.all(10),
            child: icon ?? emptyWidget,
          ),
        ),
      ),
    );
  }

  static Widget buildDynamicIconButton({
    required BuildContext context,
    required dynamic icon,
    required Function()? onTap,
    Function(BuildContext context, dynamic value, Widget? child)? onChangemode,
    EdgeInsets? padding,
    int quarterTurns = 0,
  }) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: Selector<AppProvider, ActiveThemeMode>(
        selector: (context, appProvider) => appProvider.themeMode,
        builder: (context, themeMode, child) {
          onChangemode?.call(context, themeMode, child);
          return buildIconButton(
            context: context,
            icon: icon,
            onTap: onTap,
            padding: padding,
            quarterTurns: quarterTurns,
          );
        },
      ),
    );
  }

  static Widget buildDynamicToolButton({
    required BuildContext context,
    required WindowButtonIconBuilder iconBuilder,
    required VoidCallback onTap,
    Function(BuildContext context, dynamic value, Widget? child)? onChangemode,
  }) {
    return Selector<AppProvider, ActiveThemeMode>(
      selector: (context, appProvider) => appProvider.themeMode,
      builder: (context, themeMode, child) {
        onChangemode?.call(context, themeMode, child);
        return ToolButton(
          context: context,
          iconBuilder: iconBuilder,
          onTap: onTap,
          padding: const EdgeInsets.all(7),
        );
      },
    );
  }

  static Widget buildRadioItem({
    double radius = 10,
    bool topRadius = false,
    bool bottomRadius = false,
    required bool value,
    Color? titleColor,
    bool showLeading = false,
    IconData leading = Icons.check_box_outline_blank,
    required String title,
    String description = "",
    Function()? onTap,
    double trailingLeftMargin = 5,
    double padding = 15,
    required BuildContext context,
    bool disabled = false,
  }) {
    assert(padding > 5);
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
          bottom:
              bottomRadius ? Radius.circular(radius) : const Radius.circular(0),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.vertical(
            top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
            bottom: bottomRadius
                ? Radius.circular(radius)
                : const Radius.circular(0),
          ),
          border: const Border(),
        ),
        child: InkWell(
          borderRadius: BorderRadius.vertical(
              top: topRadius
                  ? Radius.circular(radius)
                  : const Radius.circular(0),
              bottom: bottomRadius
                  ? Radius.circular(radius)
                  : const Radius.circular(0)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: description.isNotEmpty ? padding : padding - 5,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: showLeading,
                      child: Icon(leading, size: 20),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: MyTheme.titleMedium,
                          ),
                          description.isNotEmpty
                              ? Text(description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.apply(fontSizeDelta: 1))
                              : emptyWidget,
                        ],
                      ),
                    ),
                    SizedBox(width: trailingLeftMargin),
                    Opacity(
                      opacity: disabled ? 0.2 : 1,
                      child: Transform.scale(
                        scale: 0.9,
                        child: Switch(
                          value: value,
                          onChanged: disabled
                              ? null
                              : (_) {
                                  HapticFeedback.lightImpact();
                                  if (onTap != null) onTap();
                                },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).dividerColor,
                      width: 0.5,
                      style:
                          bottomRadius ? BorderStyle.none : BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildListTile({
    required BuildContext context,
    required String title,
    required IconData leading,
    Function()? onTap,
    EdgeInsets? padding,
    double? leadingSize,
  }) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Row(
            children: [
              Icon(leading, size: leadingSize ?? 24),
              const SizedBox(width: 16),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(fontSizeDelta: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildEntryItem({
    Key? key,
    required BuildContext context,
    double radius = 10,
    bool topRadius = false,
    bool bottomRadius = false,
    bool showLeading = false,
    bool showTrailing = true,
    double tipWidth = 80,
    bool isCaption = false,
    Color? backgroundColor,
    Color? leadingColor,
    Color? titleColor,
    Color? descriptionColor,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    IconData leading = Icons.home_filled,
    required String title,
    String tip = "",
    Widget? tipWidget,
    String description = "",
    Function()? onTap,
    double verticalPadding = 18,
    double horizontalPadding = 10,
    double trailingLeftMargin = 5,
    bool dividerPadding = true,
    IconData trailing = Icons.keyboard_arrow_right_rounded,
  }) {
    return Material(
      key: key,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
          bottom:
              bottomRadius ? Radius.circular(radius) : const Radius.circular(0),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).canvasColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.vertical(
            top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
            bottom: bottomRadius
                ? Radius.circular(radius)
                : const Radius.circular(0),
          ),
          border: const Border(),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.vertical(
            top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
            bottom: bottomRadius
                ? Radius.circular(radius)
                : const Radius.circular(0),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: verticalPadding, horizontal: horizontalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: showLeading,
                      child: Icon(leading, size: 20, color: leadingColor),
                    ),
                    showLeading
                        ? const SizedBox(width: 10)
                        : const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: crossAxisAlignment,
                        children: [
                          Text(
                            title,
                            style: isCaption
                                ? Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.apply(fontSizeDelta: 1)
                                : Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.apply(
                                      color: titleColor,
                                    ),
                          ),
                          description.isNotEmpty
                              ? Text(
                                  description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.apply(
                                        fontSizeDelta: 1,
                                        color: descriptionColor,
                                      ),
                                )
                              : emptyWidget,
                        ],
                      ),
                    ),
                    isCaption || tip.isEmpty
                        ? Container()
                        : const SizedBox(width: 30),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: description.isNotEmpty
                              ? tipWidth
                              : tipWidth + 40),
                      child: Text(
                        tip,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.apply(fontSizeDelta: 1),
                      ),
                    ),
                    if (tipWidget != null)
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: description.isNotEmpty
                                ? tipWidth
                                : tipWidth + 40),
                        child: tipWidget,
                      ),
                    SizedBox(width: showTrailing ? trailingLeftMargin : 0),
                    Visibility(
                      visible: showTrailing,
                      child: Icon(
                        trailing,
                        size: 20,
                        color:
                            Theme.of(context).iconTheme.color?.withAlpha(127),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0,
                margin:
                    EdgeInsets.symmetric(horizontal: dividerPadding ? 10 : 0),
                decoration: BoxDecoration(
                  border: bottomRadius ? null : MyTheme.bottomBorder,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildPopupMenuButton({
    required BuildContext context,
    required dynamic icon,
    Function()? onTap,
    Function()? onLongPress,
    Color? background,
    EdgeInsets? padding,
    required MyPopupMenuItemBuilder itemBuilder,
    MyPopupMenuItemSelected? onSelected,
  }) {
    return MyPopupMenuButton(
      onSelected: onSelected,
      itemBuilder: itemBuilder,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: buildIconButton(
        context: context,
        icon: icon,
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }

  static Widget buildCountItem(
    BuildContext context, {
    required String title,
    int value = 0,
    String? subTitle,
    Function()? onTap,
    double fontSizeDelta = 0,
  }) {
    var body = ItemBuilder.buildClickItem(
      clickable: onTap != null,
      GestureDetector(
        onTap: onTap,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: subTitle ?? Utils.formatCountWithTextAndDot(value),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.apply(fontWeightDelta: 2, fontSizeDelta: fontSizeDelta),
              ),
              const WidgetSpan(child: SizedBox(width: 4)),
              TextSpan(
                text: title,
                style: MyTheme.titleMedium.apply(
                  color: MyTheme.textLightGreyColor,
                  fontSizeDelta: fontSizeDelta,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (subTitle == null) {
      return ItemBuilder.buildToolTip(
        child: body,
        message: "${Utils.formatCountWithDot(value)} $title",
      );
    } else {
      return body;
    }
  }

  static Widget buildToolTip({
    required String message,
    required Widget child,
    TooltipPosition? position = TooltipPosition.bottom,
  }) {
    return MyTooltip(
      message: message,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: MyTheme.getDefaultDecoration(8),
      textStyle: MyTheme.bodyMedium,
      waitDuration: const Duration(milliseconds: 500),
      position: position ?? TooltipPosition.bottom,
      verticalOffset: 12,
      child: child,
    );
  }

  static Widget buildCaptionItem({
    required BuildContext context,
    double radius = 10,
    bool topRadius = true,
    bool bottomRadius = false,
    bool showLeading = false,
    bool showTrailing = true,
    IconData leading = Icons.home_filled,
    required String title,
    IconData trailing = Icons.keyboard_arrow_right_rounded,
  }) {
    return buildEntryItem(
      context: context,
      title: title,
      radius: radius,
      topRadius: topRadius,
      bottomRadius: bottomRadius,
      showTrailing: false,
      showLeading: showLeading,
      onTap: null,
      leading: leading,
      trailing: trailing,
      verticalPadding: 10,
      isCaption: true,
      dividerPadding: false,
    );
  }

  static Widget buildContainerItem({
    double radius = 10,
    bool topRadius = false,
    bool bottomRadius = false,
    required Widget child,
    required BuildContext context,
    Color? backgroundColor,
    EdgeInsets? padding,
    Border? border,
    double? height,
    Alignment? alignment,
  }) {
    return Container(
      height: height,
      padding: padding,
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).canvasColor,
        borderRadius: BorderRadius.vertical(
          top: topRadius ? Radius.circular(radius) : const Radius.circular(0),
          bottom:
              bottomRadius ? Radius.circular(radius) : const Radius.circular(0),
        ),
        border: border,
      ),
      child: child,
    );
  }

  static buildConstraintContainer({required Widget child}) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: MyTheme.maxWidth),
        child: child,
      ),
    );
  }

  static Widget buildThemeItem({
    required ThemeColorData themeColorData,
    required int index,
    required int groupIndex,
    required BuildContext context,
    required Function(int?)? onChanged,
  }) {
    return Container(
      width: 107.3,
      height: 166.4,
      margin: EdgeInsets.only(left: index == 0 ? 10 : 0, right: 10),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 0, left: 8, right: 8),
            decoration: BoxDecoration(
              color: themeColorData.scaffoldBackgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: themeColorData.dividerColor,
                style: BorderStyle.solid,
                width: 0.6,
              ),
            ),
            child: Column(
              children: [
                _buildCardRow(themeColorData),
                const SizedBox(height: 5),
                _buildCardRow(themeColorData),
                const SizedBox(height: 15),
                Radio(
                  value: index,
                  groupValue: groupIndex,
                  onChanged: onChanged,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return themeColorData.primaryColor;
                    } else {
                      return themeColorData.textLightGreyColor;
                    }
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          AutoSizeText(
            themeColorData.name,
            style: MyTheme.bodySmall,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  static Widget buildFontItem({
    required CustomFont font,
    required CustomFont currentFont,
    required BuildContext context,
    required Function(CustomFont?)? onChanged,
    Function(CustomFont?)? onDelete,
    bool showDelete = false,
    double width = 110,
    double height = 160,
  }) {
    int existState = -1;
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            padding:
                const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height - 65,
                  child: FutureBuilder(
                    future: Future<CustomFont>.sync(() async {
                      existState =
                          (await CustomFont.isFontFileExist(font)) ? 1 : 0;
                      return font;
                    }),
                    builder: (context, snapshot) {
                      return existState == 1
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  S.current.fontItemCaptionLatin,
                                  style: textTheme.titleMedium?.apply(
                                    fontFamily: font.fontFamily,
                                    letterSpacingDelta: 1,
                                  ),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  S.current.fontItemCaptionLatin,
                                  style: textTheme.titleLarge?.apply(
                                    fontFamily: font.fontFamily,
                                    letterSpacingDelta: 1,
                                  ),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  S.current.fontItemCaptionNonLatin,
                                  style: textTheme.titleMedium?.apply(
                                    fontFamily: font.fontFamily,
                                    letterSpacingDelta: 1,
                                  ),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  S.current.fontItemCaptionNonLatin,
                                  style: textTheme.titleLarge?.apply(
                                    fontFamily: font.fontFamily,
                                    letterSpacingDelta: 1,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            )
                          : AutoSizeText(
                              existState == 0
                                  ? S.current.fontFileNotExist
                                  : S.current.fontFileLoading,
                              style: textTheme.titleLarge?.apply(
                                fontFamily: font.fontFamily,
                                fontWeightDelta: 0,
                              ),
                            );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: font,
                      groupValue: currentFont,
                      onChanged: onChanged,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      fillColor: WidgetStateProperty.resolveWith((states) {
                        if (states.contains(WidgetState.selected)) {
                          return Theme.of(context).primaryColor;
                        } else {
                          return MyTheme.textLightGreyColor;
                        }
                      }),
                    ),
                    if (showDelete) const SizedBox(width: 5),
                    if (showDelete)
                      ItemBuilder.buildIconButton(
                        context: context,
                        icon: const Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.redAccent,
                          size: 21,
                        ),
                        padding: const EdgeInsets.all(10),
                        onTap: () {
                          onDelete?.call(font);
                        },
                      ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          AutoSizeText(
            font.intlFontName,
            style: MyTheme.bodySmall.apply(
              fontFamily: font.fontFamily,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  static Widget buildEmptyFontItem({
    required BuildContext context,
    required Function()? onTap,
    double width = 110,
    double height = 160,
  }) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemBuilder.buildClickItem(
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: width,
                height: height,
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.add_rounded,
                  size: 40,
                  color: MyTheme.textLightGreyColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            S.current.loadFontFamily,
            style: MyTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  static Widget buildEmptyThemeItem({
    required BuildContext context,
    required Function()? onTap,
  }) {
    return Container(
      width: 107.3,
      height: 166.4,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 107.3,
            height: 141.7,
            padding: const EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Theme.of(context).dividerColor,
                style: BorderStyle.solid,
                width: 0.6,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_rounded,
                  size: 30,
                  color: MyTheme.textLightGreyColor,
                ),
                const SizedBox(height: 6),
                Text(S.current.newTheme, style: MyTheme.titleSmall),
              ],
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "",
            style: MyTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  static Widget _buildCardRow(ThemeColorData themeColorData) {
    return Container(
      height: 35,
      width: 90,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: themeColorData.canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              color: themeColorData.splashColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 5,
                width: 45,
                decoration: BoxDecoration(
                  color: themeColorData.textColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 5,
                width: 35,
                decoration: BoxDecoration(
                  color: themeColorData.textLightGreyColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget buildSmallIcon({
    required BuildContext context,
    required IconData icon,
    Function()? onTap,
    Color? backgroundColor,
  }) {
    return Material(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).canvasColor,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Icon(icon),
          ),
        ),
      ),
    );
  }

  static Widget buildTextDivider({
    required BuildContext context,
    required String text,
    double margin = 15,
    double width = 300,
  }) {
    return SizedBox(
      width: width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: margin),
              height: 1,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
          Text(
            text,
            style: MyTheme.titleSmall,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: margin),
              height: 1,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildEmptyPlaceholder({
    required BuildContext context,
    required String text,
    double size = 30,
    bool showButton = false,
    String? buttonText,
    ScrollController? scrollController,
    Function()? onTap,
    ScrollPhysics? physics,
  }) {
    return ListView(
      physics: physics,
      controller: scrollController,
      children: [
        const SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Icon(
                    Icons.inbox_rounded,
                    size: size,
                    color: MyTheme.textDarkGreyColor,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: MyTheme.labelLarge,
                  ),
                  if (showButton) const SizedBox(height: 10),
                  if (showButton)
                    ItemBuilder.buildRoundButton(
                      context,
                      text: buttonText,
                      background: Theme.of(context).primaryColor,
                      onTap: onTap,
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget buildTransparentTag(
    BuildContext context, {
    required String text,
    bool isCircle = false,
    int? width,
    int? height,
    double opacity = 0.6,
    double? radius,
    EdgeInsetsGeometry? padding,
    double? fontSizeDelta,
    dynamic icon,
    Function()? onTap,
    bool expanded = false,
    bool selectable = false,
  }) {
    Widget textWidget = Text(
      text,
      style: MyTheme.bodySmall.apply(
        color: Colors.white,
        fontSizeDelta: fontSizeDelta ?? -1,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 5,
    );
    if (selectable) {
      textWidget = ItemBuilder.buildSelectableArea(
        context: context,
        child: textWidget,
        focusNode: FocusNode(),
      );
    }
    return ItemBuilder.buildClickItem(
      clickable: onTap != null,
      GestureDetector(
        onTap: onTap,
        child: Container(
          padding: isCircle
              ? padding ?? const EdgeInsets.all(5)
              : padding ??
                  const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: Colors.black38.withOpacity(opacity),
            borderRadius: isCircle
                ? null
                : BorderRadius.all(Radius.circular(radius ?? 50)),
          ),
          child: Row(
            children: [
              if (icon != null) icon,
              if (icon != null && Utils.isNotEmpty(text))
                const SizedBox(width: 3),
              expanded ? Expanded(child: textWidget) : textWidget,
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildCopyItem(
    BuildContext context, {
    required Widget child,
    Function()? onTap,
    required String? copyText,
    String? toastText,
    bool condition = true,
  }) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: () {
        if (condition) {
          Utils.copy(context, copyText, toastText: toastText);
        }
      },
      child: child,
    );
  }

  static Widget buildLoadingDialog(
    BuildContext context, {
    double size = 50,
    bool showText = true,
    double topPadding = 0,
    double bottomPadding = 100,
    String? text,
    bool forceDark = false,
    Color? background,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  }) {
    return Center(
      child: Container(
        width: double.infinity,
        color: background ?? Theme.of(context).cardColor.withAlpha(127),
        padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            LottieUtil.load(
              LottieUtil.getLoadingPath(context, forceDark: forceDark),
              size: size,
              scale: 1.5,
            ),
            if (showText) const SizedBox(height: 10),
            if (showText)
              Text(text ?? S.current.loading, style: MyTheme.labelLarge),
          ],
        ),
      ),
    );
  }

  static buildError({
    required BuildContext context,
    String? text,
    String? buttonText,
    Function()? onTap,
    bool white = false,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text ?? "加载失败",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.apply(color: white ? Colors.white : null),
          ),
          const SizedBox(height: 10),
          ItemBuilder.buildRoundButton(
            context,
            text: buttonText ?? "重试",
            onTap: onTap,
            color: white ? Colors.white : null,
          ),
        ],
      ),
    );
  }

  static Widget buildRoundButton(
    BuildContext context, {
    String? text,
    Function()? onTap,
    Color? background,
    Widget? icon,
    EdgeInsets? padding,
    double radius = 50,
    Color? color,
    double fontSizeDelta = 0,
    TextStyle? textStyle,
    double? width,
    bool align = false,
    bool disabled = false,
    bool feedback = false,
    bool reversePosition = false,
    bool showBorder = false,
    Color? borderColor,
  }) {
    Color fBackground = background ?? Theme.of(context).cardColor;
    Color? textColor = color ??
        (background != null
            ? Colors.white
            : disabled
                ? Colors.grey
                : MyTheme.textLightGreyColor);
    if (ColorUtil.areColorsSimilar(textColor.value, fBackground.value)) {
      textColor = ColorUtil.getComplementaryColor(fBackground);
    }
    Widget titleWidget = AutoSizeText(
      text ?? "",
      textAlign: TextAlign.center,
      style: textStyle ??
          MyTheme.titleSmall.apply(
            color: textColor,
            fontWeightDelta: 2,
            fontSizeDelta: fontSizeDelta,
          ),
      maxLines: 1,
    );

    return Material(
      color: fBackground.withAlpha(fBackground.alpha ~/ (disabled ? 1.5 : 1)),
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap != null && !disabled
            ? () {
                onTap();
                if (feedback) HapticFeedback.lightImpact();
              }
            : null,
        enableFeedback: true,
        borderRadius: BorderRadius.circular(radius),
        child: ItemBuilder.buildClickItem(
          clickable: onTap != null,
          Container(
            width: width,
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: showBorder
                  ? Border.all(
                      color: borderColor ??
                          Theme.of(context).primaryColor.withAlpha(55),
                      width: 1)
                  : null,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null && !reversePosition) icon,
                if (icon != null && !reversePosition && Utils.isNotEmpty(text))
                  const SizedBox(width: 5),
                align
                    ? Expanded(flex: 100, child: titleWidget)
                    : Flexible(child: titleWidget),
                if (icon != null && reversePosition && Utils.isNotEmpty(text))
                  const SizedBox(width: 5),
                if (icon != null && reversePosition) icon,
                if (align) const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildFramedButton(
    BuildContext context, {
    String? text,
    Function()? onTap,
    Color? outline,
    Icon? icon,
    EdgeInsets? padding,
    double radius = 50,
    Color? color,
    double fontSizeDelta = 0,
    TextStyle? textStyle,
    double? width,
  }) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(radius),
        child: ItemBuilder.buildClickItem(
          clickable: onTap != null,
          Container(
            width: width,
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color:
                      outline ?? Theme.of(context).primaryColor.withAlpha(55),
                  width: 1),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon,
                Text(
                  text ?? "",
                  style: textStyle ??
                      MyTheme.titleSmall.apply(
                        color: color ?? Theme.of(context).primaryColor,
                        fontWeightDelta: 2,
                        fontSizeDelta: fontSizeDelta,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildSearchBar({
    required BuildContext context,
    required hintText,
    required Null Function(dynamic value) onSubmitted,
    TextEditingController? controller,
    FocusNode? focusNode,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AssetUtil.load(
            AssetUtil.searchDarkIcon,
            size: 20,
          ),
          Expanded(
            child: Center(
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  focusNode: focusNode,
                  controller: controller,
                  textInputAction: TextInputAction.search,
                  contextMenuBuilder: (contextMenuContext, details) =>
                      ItemBuilder.editTextContextMenuBuilder(
                          contextMenuContext, details,
                          context: context),
                  onSubmitted: onSubmitted,
                  cursorColor: Theme.of(context).primaryColor,
                  cursorRadius: const Radius.circular(5),
                  style: MyTheme.titleSmall,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 8),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: hintText,
                    hintStyle: MyTheme.titleSmall
                        .apply(color: MyTheme.textLightGreyColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildDesktopSearchBar({
    required BuildContext context,
    required hintText,
    required Function(dynamic value) onSubmitted,
    TextEditingController? controller,
    FocusNode? focusNode,
    Color? background,
    double borderRadius = 50,
    double? bottomMargin,
    double hintFontSizeDelta = 0,
    String? tag,
  }) {
    return Hero(
      tag: tag ?? Utils.generateUid(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: background ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Material(
                  color: Colors.transparent,
                  child: TextField(
                    focusNode: focusNode,
                    contextMenuBuilder: (contextMenuContext, details) =>
                        ItemBuilder.editTextContextMenuBuilder(
                            contextMenuContext, details,
                            context: context),
                    controller: controller,
                    cursorColor: Theme.of(context).primaryColor,
                    cursorRadius: const Radius.circular(5),
                    textInputAction: TextInputAction.search,
                    onSubmitted: onSubmitted,
                    style: MyTheme.titleSmall.apply(
                      fontSizeDelta: hintFontSizeDelta,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 8),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: hintText,
                      hintStyle: MyTheme.titleSmall.apply(
                        color: MyTheme.textLightGreyColor,
                        fontSizeDelta: hintFontSizeDelta,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onSubmitted(controller?.text);
              },
              child: buildClickItem(
                AssetUtil.loadDouble(
                  context,
                  AssetUtil.searchLightIcon,
                  AssetUtil.searchDarkIcon,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildTitle(
    BuildContext context, {
    String? title,
    IconData? icon,
    String? suffixText,
    Function()? onTap,
    double topMargin = 8,
    double bottomMargin = 4,
    double left = 16,
    TextStyle? textStyle,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left,
        right: Utils.isNotEmpty(suffixText) ? 8 : 16,
        top: topMargin,
        bottom: bottomMargin,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title ?? "",
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.apply(fontWeightDelta: 2, fontSizeDelta: 1),
            ),
          ),
          if (icon != null)
            ItemBuilder.buildIconButton(
              context: context,
              icon: Icon(
                icon,
                size: 18,
                color: MyTheme.textLightGreyColor,
              ),
              onTap: onTap,
            ),
          if (Utils.isNotEmpty(suffixText))
            GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  Text(
                    suffixText!,
                    style: MyTheme.labelMedium,
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 18,
                    color: MyTheme.textLightGreyColor,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  static buildDivider(
    BuildContext context, {
    double vertical = 8,
    double horizontal = 16,
    double? width,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      height: width ?? 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).dividerColor,
      ),
    );
  }

  static buildStatisticItem(
    BuildContext context, {
    Color? labelColor,
    Color? countColor,
    int labelFontWeightDelta = 0,
    int countFontWeightDelta = 0,
    required String title,
    required int? count,
    Function()? onTap,
  }) {
    Map countWithScale = Utils.formatCountToMap(count ?? 0);
    return MouseRegion(
      cursor:
          onTap != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              count != null
                  ? Row(
                      children: [
                        Text(
                          countWithScale['count'],
                          style: MyTheme.titleLarge.apply(
                              color: countColor,
                              fontWeightDelta: countFontWeightDelta),
                        ),
                        if (countWithScale.containsKey("scale"))
                          const SizedBox(width: 2),
                        if (countWithScale.containsKey("scale"))
                          Text(
                            countWithScale['scale'],
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.apply(
                                    fontSizeDelta: -2,
                                    color: countColor,
                                    fontWeightDelta: countFontWeightDelta),
                          ),
                      ],
                    )
                  : Text(
                      "-",
                      style: MyTheme.titleLarge.apply(
                          color: countColor,
                          fontWeightDelta: countFontWeightDelta),
                    ),
              const SizedBox(height: 4),
              Text(
                title,
                style: MyTheme.labelMedium.apply(
                  fontSizeDelta: -1,
                  color: labelColor,
                  fontWeightDelta: labelFontWeightDelta,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static buildIconTextButton(
    BuildContext context, {
    Axis direction = Axis.horizontal,
    double spacing = 2,
    Widget? icon,
    String text = "",
    double fontSizeDelta = 0,
    int fontWeightDelta = 0,
    bool showIcon = true,
    bool showText = true,
    Function()? onTap,
    Color? color,
    int quarterTurns = 0,
    String? tooltip,
    bool clickable = true,
  }) {
    var body = ItemBuilder.buildClickItem(
      clickable: clickable,
      GestureDetector(
        onTap: onTap,
        child: direction == Axis.horizontal
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null && showIcon)
                    RotatedBox(quarterTurns: quarterTurns, child: icon),
                  if (icon != null && showIcon) SizedBox(width: spacing),
                  if (showText && text != "0")
                    Text(
                      text,
                      style: MyTheme.titleSmall.apply(
                        fontSizeDelta: fontSizeDelta,
                        color: color,
                        fontWeightDelta: fontWeightDelta,
                      ),
                    ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null && showIcon)
                    RotatedBox(
                        quarterTurns: quarterTurns,
                        child: ItemBuilder.buildIconButton(
                            context: context, icon: icon, onTap: onTap)),
                  if (icon != null && showIcon) SizedBox(height: spacing),
                  if (showText && text != "0")
                    Text(
                      text,
                      style: MyTheme.titleSmall.apply(
                        fontSizeDelta: fontSizeDelta,
                        color: color,
                        fontWeightDelta: fontWeightDelta,
                      ),
                    ),
                ],
              ),
      ),
    );
    if (Utils.isNotEmpty(tooltip)) {
      return ItemBuilder.buildToolTip(
        child: body,
        message: tooltip!,
      );
    } else {
      return body;
    }
  }

  static Widget buildWrapTagList(
    BuildContext context,
    List<String> list, {
    Function(String)? onTap,
    EdgeInsets? margin,
  }) {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 16, right: 16, bottom: 4),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        alignment: WrapAlignment.start,
        children: List.generate(list.length, (index) {
          return buildWrapTagItem(context, list[index], onTap: onTap);
        }),
      ),
    );
  }

  static Widget buildWrapTagItem(
    BuildContext context,
    String str, {
    Function(String)? onTap,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onTap?.call(str);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border:
                Border.all(color: Theme.of(context).dividerColor, width: 0.5),
          ),
          child: Text(
            str,
            style: MyTheme.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  static Tab buildAnimatedTab(
    BuildContext context, {
    required bool selected,
    required String text,
    bool normalUserBold = false,
    bool sameFontSize = false,
    double fontSizeDelta = 0,
  }) {
    TextStyle normalStyle = MyTheme.titleLarge.apply(
      color: Colors.grey,
      fontSizeDelta: fontSizeDelta - (sameFontSize ? 0 : 1),
      fontWeightDelta: normalUserBold ? 0 : -2,
    );
    TextStyle selectedStyle = MyTheme.titleLarge.apply(
      fontSizeDelta: fontSizeDelta + (sameFontSize ? 0 : 1),
    );
    return Tab(
      child: AnimatedDefaultTextStyle(
        style: selected ? selectedStyle : normalStyle,
        duration: const Duration(milliseconds: 100),
        child: Container(
          alignment: Alignment.center,
          child: Text(text),
        ),
      ),
    );
  }

  static buildSelectableArea({
    required BuildContext context,
    required Widget child,
    required FocusNode focusNode,
    List<FlutterContextMenuItem> Function(MySelectableRegionState, String?)?
        contextMenuItemsBuilder,
  }) {
    return MySelectionArea(
      focusNode: focusNode,
      onRightclick: !ResponsiveUtil.isDesktop()
          ? null
          : (details) {
              String? selectedText = details.selectedText;
              FlutterContextMenu contextMenu = FlutterContextMenu(
                entries: [
                  if (Utils.isNotEmpty(selectedText))
                    FlutterContextMenuItem(
                      S.current.copy,
                      iconData: Icons.copy_rounded,
                      onPressed: () {
                        details.clearSelection();
                        Utils.copy(context, selectedText);
                        IToast.showTop(S.current.copySuccess);
                      },
                    ),
                  if (Utils.isNotEmpty(selectedText))
                    FlutterContextMenuItem(
                      "过滤",
                      iconData: Icons.filter_list_rounded,
                      onPressed: () {
                        details.clearSelection();
                        if (appProvider.filterContentRegExp.isNotEmpty) {
                          appProvider.filterContentRegExp += "|";
                        }
                        appProvider.filterContentRegExp +=
                            RegExp.escape(selectedText!);
                      },
                    ),
                  if (Utils.isNotEmpty(selectedText))
                    FlutterContextMenuItem.submenu(
                      S.current.search,
                      iconData: Icons.content_paste_search_rounded,
                      items: [
                        FlutterContextMenuItem(
                          "Google搜索",
                          onPressed: () {
                            details.clearSelection();
                            UriUtil.launchUrlUri(context,
                                "https://www.google.com/search?q=$selectedText");
                          },
                        ),
                        FlutterContextMenuItem(
                          "Bing搜索",
                          onPressed: () {
                            details.clearSelection();
                            UriUtil.launchUrlUri(context,
                                "https://bing.com/search?q=$selectedText");
                          },
                        ),
                        FlutterContextMenuItem(
                          "百度搜索",
                          onPressed: () {
                            details.clearSelection();
                            UriUtil.launchUrlUri(context,
                                "https://www.baidu.com/s?wd=$selectedText");
                          },
                        ),
                      ],
                    ),
                  FlutterContextMenuItem(
                    S.current.selectAll,
                    iconData: Icons.select_all_rounded,
                    onPressed: () {
                      details.clearSelection();
                      details.selectAll();
                    },
                  ),
                  if (Utils.isNotEmpty(selectedText))
                    ...contextMenuItemsBuilder?.call(details, selectedText) ??
                        [],
                ],
              );
              contextMenu.showAtMousePosition(
                  context, details.contextMenuAnchors.primaryAnchor);
            },
      contextMenuBuilder: (contextMenuContext, details) {
        Map<ContextMenuButtonType, String> typeToString = {
          ContextMenuButtonType.copy: S.current.copy,
          ContextMenuButtonType.cut: S.current.cut,
          ContextMenuButtonType.paste: S.current.paste,
          ContextMenuButtonType.selectAll: S.current.selectAll,
          ContextMenuButtonType.searchWeb: S.current.search,
          ContextMenuButtonType.share: S.current.share,
          ContextMenuButtonType.lookUp: S.current.search,
          ContextMenuButtonType.delete: S.current.delete,
          ContextMenuButtonType.liveTextInput: S.current.input,
          ContextMenuButtonType.custom: S.current.custom,
        };
        List<MyContextMenuItem> items = [];
        for (var e in details.contextMenuButtonItems) {
          if (e.type != ContextMenuButtonType.custom) {
            items.add(
              MyContextMenuItem(
                label: typeToString[e.type] ?? "",
                type: e.type,
                onPressed: () {
                  e.onPressed?.call();
                  if (e.type == ContextMenuButtonType.copy) {
                    IToast.showTop(S.current.copySuccess);
                  }
                },
              ),
            );
          }
        }
        items.add(
          MyContextMenuItem(
            label: S.current.search,
            type: ContextMenuButtonType.custom,
            onPressed: () {
              if (Utils.isNotEmpty(details.selectedText)) {
                panelScreenState?.pushPage(
                    SearchResultScreen(searchKey: details.selectedText!));
              }
              details.hideToolbar();
            },
          ),
        );
        items.add(
          MyContextMenuItem(
            label: "过滤",
            type: ContextMenuButtonType.custom,
            onPressed: () {
              if (Utils.isNotEmpty(details.selectedText)) {
                if (appProvider.filterContentRegExp.isNotEmpty) {
                  appProvider.filterContentRegExp += "|";
                }
                appProvider.filterContentRegExp +=
                    RegExp.escape(details.selectedText!);
              }
              details.hideToolbar();
            },
          ),
        );
        if (ResponsiveUtil.isMobile()) {
          return MyMobileTextSelectionToolbar.items(
            anchorAbove: details.contextMenuAnchors.primaryAnchor,
            anchorBelow: details.contextMenuAnchors.primaryAnchor,
            backgroundColor: MyTheme.canvasColor,
            dividerColor: MyTheme.dividerColor,
            items: items,
            itemBuilder: (MyContextMenuItem item) {
              return Text(
                item.label ?? "",
                style: MyTheme.titleMedium,
              );
            },
          );
        } else {
          return MyDesktopTextSelectionToolbar(
            anchor: details.contextMenuAnchors.primaryAnchor,
            decoration: MyTheme.defaultDecoration,
            dividerColor: MyTheme.dividerColor,
            items: items,
          );
        }
      },
      child: SelectionTransformer.separated(
        child: child,
      ),
    );
  }

  static Widget editTextContextMenuBuilder(
    contextMenuContext,
    EditableTextState details, {
    required BuildContext context,
  }) {
    Map<ContextMenuButtonType, String> typeToString = {
      ContextMenuButtonType.copy: S.current.copy,
      ContextMenuButtonType.cut: S.current.cut,
      ContextMenuButtonType.paste: S.current.paste,
      ContextMenuButtonType.selectAll: S.current.selectAll,
      ContextMenuButtonType.searchWeb: S.current.search,
      ContextMenuButtonType.share: S.current.share,
      ContextMenuButtonType.lookUp: S.current.search,
      ContextMenuButtonType.delete: S.current.delete,
      ContextMenuButtonType.liveTextInput: S.current.input,
      ContextMenuButtonType.custom: S.current.custom,
    };
    List<MyContextMenuItem> items = [];
    int start = details.textEditingValue.selection.start <= -1
        ? 0
        : details.textEditingValue.selection.start;
    int end = details.textEditingValue.selection.end
        .clamp(0, details.textEditingValue.text.length);
    String selectedText = details.textEditingValue.text.substring(start, end);
    for (var e in details.contextMenuButtonItems) {
      if (e.type != ContextMenuButtonType.custom) {
        items.add(
          MyContextMenuItem(
            label: typeToString[e.type] ?? "",
            type: e.type,
            onPressed: () {
              e.onPressed?.call();
              if (e.type == ContextMenuButtonType.copy) {
                IToast.showTop(S.current.copySuccess);
              }
            },
          ),
        );
      }
    }
    if (Utils.isNotEmpty(selectedText)) {
      items.add(
        MyContextMenuItem(
          label: S.current.search,
          type: ContextMenuButtonType.custom,
          onPressed: () {
            if (Utils.isNotEmpty(selectedText)) {
              panelScreenState
                  ?.pushPage(SearchResultScreen(searchKey: selectedText));
            }
            details.hideToolbar();
          },
        ),
      );
    }
    if (ResponsiveUtil.isMobile()) {
      return MyMobileTextSelectionToolbar.items(
        anchorAbove: details.contextMenuAnchors.primaryAnchor,
        anchorBelow: details.contextMenuAnchors.primaryAnchor,
        backgroundColor: Theme.of(contextMenuContext).canvasColor,
        dividerColor: Theme.of(contextMenuContext).dividerColor,
        items: items,
        itemBuilder: (MyContextMenuItem item) {
          return Text(
            item.label ?? "",
            style: Theme.of(contextMenuContext).textTheme.titleMedium,
          );
        },
      );
    } else {
      return MyDesktopTextSelectionToolbar(
        anchor: details.contextMenuAnchors.primaryAnchor,
        dividerColor: Theme.of(contextMenuContext).dividerColor,
        decoration: MyTheme.defaultDecoration,
        items: items,
      );
    }
  }

  static buildClickItem(
    Widget child, {
    bool clickable = true,
  }) {
    return MouseRegion(
      cursor: clickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: child,
    );
  }

  static buildWindowTitle(
    BuildContext context, {
    Color? backgroundColor,
    List<Widget> leftWidgets = const [],
    List<Widget> rightButtons = const [],
    required bool isStayOnTop,
    required bool isMaximized,
    required Function() onStayOnTopTap,
    bool forceClose = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        // border: Border(
        //   left: BorderSide(
        //     color: Theme.of(context).dividerColor,
        //     width: 0.5
        //   ),
        // ),
      ),
      child: WindowTitleBar(
        useMoveHandle: ResponsiveUtil.isDesktop(),
        titleBarHeightDelta: 26,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ...leftWidgets,
            // const Spacer(),
            Row(
              children: [
                const SizedBox(width: 10),
                ...rightButtons,
                StayOnTopWindowButton(
                  context: context,
                  rotateAngle: isStayOnTop ? 0 : pi / 4,
                  colors: isStayOnTop
                      ? MyColors.getStayOnTopButtonColors(context)
                      : MyColors.getNormalButtonColors(context),
                  borderRadius: BorderRadius.circular(8),
                  onPressed: onStayOnTopTap,
                ),
                const SizedBox(width: 3),
                MinimizeWindowButton(
                  colors: MyColors.getNormalButtonColors(context),
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(width: 3),
                isMaximized
                    ? RestoreWindowButton(
                        colors: MyColors.getNormalButtonColors(context),
                        borderRadius: BorderRadius.circular(8),
                        onPressed: ResponsiveUtil.maximizeOrRestore,
                      )
                    : MaximizeWindowButton(
                        colors: MyColors.getNormalButtonColors(context),
                        borderRadius: BorderRadius.circular(8),
                        onPressed: ResponsiveUtil.maximizeOrRestore,
                      ),
                const SizedBox(width: 3),
                CloseWindowButton(
                  colors: MyColors.getCloseButtonColors(context),
                  borderRadius: BorderRadius.circular(8),
                  onPressed: () {
                    if (forceClose) {
                      windowManager.close();
                    } else {
                      if (HiveUtil.getBool(HiveUtil.showTrayKey) &&
                          HiveUtil.getBool(HiveUtil.enableCloseToTrayKey)) {
                        windowManager.hide();
                      } else {
                        windowManager.close();
                      }
                    }
                  },
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  static MyCachedNetworkImage buildCachedImage({
    required String imageUrl,
    required BuildContext context,
    BoxFit? fit,
    bool showLoading = true,
    double? width,
    double? height,
    Color? placeholderBackground,
    double topPadding = 0,
    double bottomPadding = 0,
    bool simpleError = false,
  }) {
    return MyCachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      simpleError: simpleError,
      height: height,
      placeholderBackground: placeholderBackground,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      showLoading: showLoading,
    );
  }

  static buildAvatar({
    required BuildContext context,
    required String imageUrl,
    double size = 32,
    bool showLoading = false,
    bool useDefaultAvatar = false,
    bool showBorder = true,
    bool showDetail = false,
    String? title,
    String? caption,
    String? tagPrefix,
    String? tagSuffix,
    bool clickable = true,
    bool isOval = true,
    Function()? onTap,
  }) {
    String tagUrl = imageUrl;
    return ItemBuilder.buildClickItem(
      Container(
        decoration: BoxDecoration(
          border: showBorder
              ? Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 0.5,
                )
              : const Border.fromBorderSide(BorderSide.none),
          shape: isOval ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isOval ? null : BorderRadius.circular(8),
        ),
        child: useDefaultAvatar || tagUrl.isEmpty
            ? ClipOval(
                child: Image.asset(
                  "assets/avatar.png",
                  width: size,
                  height: size,
                ),
              )
            : ItemBuilder.buildClickItem(
                GestureDetector(
                  onTap: showDetail
                      ? () {
                          if (ResponsiveUtil.isMobile()) {
                            RouteUtil.pushMaterialRoute(
                              rootContext,
                              HeroPhotoViewScreen(
                                tagPrefix: tagPrefix,
                                imageUrls: [tagUrl],
                                useMainColor: false,
                                title: title,
                                captions: [caption ?? ""],
                              ),
                            );
                          } else {
                            RouteUtil.pushDialogRoute(
                              context,
                              showClose: false,
                              fullScreen: true,
                              HeroPhotoViewScreen(
                                tagPrefix: tagPrefix,
                                imageUrls: [tagUrl],
                                useMainColor: false,
                                title: title,
                                captions: [caption ?? ""],
                              ),
                            );
                          }
                        }
                      : onTap,
                  child: isOval
                      ? ClipOval(
                          child: ItemBuilder.buildCachedImage(
                            context: context,
                            imageUrl: tagUrl,
                            width: size,
                            showLoading: showLoading,
                            height: size,
                            fit: BoxFit.cover,
                            simpleError: true,
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: ItemBuilder.buildCachedImage(
                            context: context,
                            imageUrl: tagUrl,
                            width: size,
                            showLoading: showLoading,
                            fit: BoxFit.cover,
                            height: size,
                            simpleError: true,
                          ),
                        ),
                ),
              ),
      ),
      clickable: clickable,
    );
  }

  static buildHeroCachedImage({
    required String imageUrl,
    required BuildContext context,
    BoxFit? fit = BoxFit.cover,
    bool showLoading = true,
    double? width,
    double? height,
    Color? placeholderBackground,
    double topPadding = 0,
    double bottomPadding = 0,
    String? title,
    String? caption,
    String? tagPrefix,
    bool isOrigin = true,
  }) {
    return ItemBuilder.buildClickItem(
      GestureDetector(
        onTap: () {
          RouteUtil.pushDialogRoute(
            context,
            showClose: false,
            fullScreen: true,
            useMaterial: true,
            HeroPhotoViewScreen(
              tagPrefix: tagPrefix,
              imageUrls:
                  isOrigin ? ImageUtil.getOriginalUrls([imageUrl]) : [imageUrl],
              useMainColor: false,
              title: title,
              captions: [caption ?? ""],
            ),
          );
        },
        child: Hero(
          tag: Utils.getHeroTag(
            tagPrefix: tagPrefix,
            url: imageUrl,
          ),
          child: ItemBuilder.buildCachedImage(
            context: context,
            imageUrl: imageUrl,
            width: width,
            height: height,
            showLoading: showLoading,
            bottomPadding: bottomPadding,
            topPadding: topPadding,
            placeholderBackground: placeholderBackground,
            fit: fit,
          ),
        ),
      ),
    );
  }

  static buildMediaHeroCachedImage({
    required int index,
    required List<Media> medias,
    required BuildContext context,
    BoxFit? fit = BoxFit.cover,
    bool showLoading = true,
    double? width,
    double? height,
    Color? placeholderBackground,
    double topPadding = 0,
    double bottomPadding = 0,
    String? title,
    String? caption,
    String? tagPrefix,
    bool simpleError = false,
  }) {
    return ItemBuilder.buildClickItem(
      GestureDetector(
        onTap: () {
          RouteUtil.pushDialogRoute(
            context,
            showClose: false,
            fullScreen: true,
            useMaterial: true,
            HeroMediaViewScreen(
              tagPrefix: tagPrefix,
              medias: medias,
              useMainColor: true,
              title: title,
              captions: caption != null ? [caption] : null,
              initIndex: index,
            ),
          );
        },
        child: Hero(
          tag: Utils.getHeroTag(
            tagPrefix: tagPrefix,
            url: TweetUtil.getMediaImageUrl(medias[index]),
          ),
          child: ItemBuilder.buildCachedImage(
            context: context,
            imageUrl: TweetUtil.getMediaImageUrl(medias[index]),
            width: width,
            height: height,
            showLoading: showLoading,
            bottomPadding: bottomPadding,
            topPadding: topPadding,
            placeholderBackground: placeholderBackground,
            fit: fit,
            simpleError: simpleError,
          ),
        ),
      ),
    );
  }

  static buildPinPut({
    required BuildContext context,
    PinPutValidateAsyncController? pinValidateAsyncController,
    TextEditingController? pinController,
    Function(String)? onCompleted,
    FocusNode? pinFocusNode,
  }) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: MyTheme.titleLarge,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Theme.of(context).primaryColor, width: 1),
    );
    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.redAccent, width: 1),
    );
    return Pinput(
      length: 6,
      autofocus: true,
      cursor: Container(
        width: 2,
        height: 24,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      errorPinTheme: errorPinTheme,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      controller: pinController,
      validateAsyncController: pinValidateAsyncController,
      textInputAction: TextInputAction.done,
      onCompleted: onCompleted,
      inputFormatters: [
        RegexInputFormatter.onlyNumber,
      ],
      focusNode: pinFocusNode,
      contextMenuBuilder: (contextMenuContext, details) =>
          ItemBuilder.editTextContextMenuBuilder(contextMenuContext, details,
              context: context),
      errorBuilder: (error, pin) => Padding(
        padding: const EdgeInsetsDirectional.only(start: 4, top: 8),
        child: Text(
          error!,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.apply(color: Colors.redAccent),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  static buildNestedScrollView({
    required Widget body,
    ScrollController? controller,
    double? height,
  }) {
    if (height != null && height > 0) {
      return NestedScrollView(
        controller: controller,
        headerSliverBuilder: (_, __) =>
            [SliverToBoxAdapter(child: Container(height: height))],
        body: body,
      );
    } else {
      return body;
    }
  }
}

class CustomImageFactory extends WidgetFactory {
  @override
  Widget? buildImageWidget(BuildTree tree, ImageSource src) {
    final url = src.url;
    if (url.startsWith('asset:') ||
        url.startsWith('data:image/') ||
        url.startsWith('file:')) {
      return super.buildImageWidget(tree, src);
    }

    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.fill,
      placeholder: (_, __) => emptyWidget,
      errorWidget: (_, __, ___) => emptyWidget,
    );
  }
}
