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

import '../Utils/app_provider.dart';
import '../Utils/responsive_util.dart';
import '../Utils/utils.dart';
import 'colors.dart';
import 'styles.dart';
import 'theme_color_data.dart';

class MyTheme {
  MyTheme._();

  static bool get isDarkMode =>
      Theme.of(rootContext).brightness == Brightness.dark;

  static double maxWidth = 1000;
  static double postMaxCrossAxisExtent = 1000;
  static double cardMaxCrossAxisExtent = 600;

  static ThemeData getTheme({required bool isDarkMode}) {
    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      primaryColor: isDarkMode
          ? MyColors.defaultPrimaryColorDark
          : MyColors.defaultPrimaryColor,
      hintColor: isDarkMode
          ? MyColors.defaultPrimaryColorDark
          : MyColors.defaultPrimaryColor,
      indicatorColor: isDarkMode
          ? MyColors.defaultPrimaryColorDark
          : MyColors.defaultPrimaryColor,
      scaffoldBackgroundColor:
          isDarkMode ? MyColors.backgroundDark : MyColors.background,
      canvasColor: isDarkMode
          ? MyColors.materialBackgroundDark
          : MyColors.materialBackground,
      dividerColor:
          isDarkMode ? MyColors.dividerColorDark : MyColors.dividerColor,
      shadowColor: isDarkMode ? MyColors.shadowColorDark : MyColors.shadowColor,
      splashColor: isDarkMode ? MyColors.splashColorDark : MyColors.splashColor,
      highlightColor:
          isDarkMode ? MyColors.highlightColorDark : MyColors.highlightColor,
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return isDarkMode
                ? MyColors.materialBackgroundDark
                : MyColors.materialBackground;
          } else {
            return isDarkMode
                ? MyColors.textGrayColorDark
                : MyColors.textGrayColor;
          }
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return isDarkMode
                ? MyColors.defaultPrimaryColorDark
                : MyColors.defaultPrimaryColor;
          } else {
            return null;
          }
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return isDarkMode
                ? MyColors.defaultPrimaryColorDark
                : MyColors.defaultPrimaryColor;
          } else {
            return isDarkMode
                ? MyColors.materialBackgroundDark
                : MyColors.materialBackground;
          }
        }),
      ),
      iconTheme: IconThemeData(
        size: 24,
        color: isDarkMode ? MyColors.iconColorDark : MyColors.iconColor,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: MyColors.defaultPrimaryColor.withAlpha(70),
        selectionHandleColor: MyColors.defaultPrimaryColor,
      ),
      textTheme: TextTheme(
        labelSmall: isDarkMode ? MyStyles.labelSmallDark : MyStyles.labelSmall,
        titleSmall: isDarkMode ? MyStyles.captionDark : MyStyles.caption,
        titleMedium: isDarkMode ? MyStyles.titleDark : MyStyles.title,
        bodySmall: isDarkMode ? MyStyles.bodySmallDark : MyStyles.bodySmall,
        bodyMedium: isDarkMode ? MyStyles.bodyMediumDark : MyStyles.bodyMedium,
        titleLarge: isDarkMode ? MyStyles.titleLargeDark : MyStyles.titleLarge,
        bodyLarge: isDarkMode ? MyStyles.textDark : MyStyles.text,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: isDarkMode
            ? MyColors.appBarBackgroundDark
            : MyColors.appBarBackground,
      ),
    );
  }

  static EdgeInsetsGeometry get responsiveFlowPadding {
    return ResponsiveUtil.isLandscape()
        ? const EdgeInsets.only(bottom: 16)
        : const EdgeInsets.only(bottom: 16);
  }

  static double get responsiveMainAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 0 : 0;
  }

  static double get responsiveCrossAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 0 : 0;
  }

  static double get responsiveMainAxisSpacingForMedia {
    return ResponsiveUtil.isLandscape() ? 6 : 2;
  }

  static double get responsiveCrossAxisSpacingForMedia {
    return ResponsiveUtil.isLandscape() ? 6 : 2;
  }

  static EdgeInsetsGeometry get responsiveCardFlowPadding {
    return ResponsiveUtil.isLandscape()
        ? const EdgeInsets.all(8).add(const EdgeInsets.only(bottom: 16))
        : const EdgeInsets.only(bottom: 16);
  }

  static double get responsiveCardMainAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 6 : 0;
  }

  static double get responsiveCardCrossAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 6 : 0;
  }

  static TextTheme get textTheme => Theme.of(rootContext).textTheme;

  static TextStyle get titleSmall => textTheme.titleSmall!;

  static TextStyle get titleMedium => textTheme.titleMedium!;

  static TextStyle get titleLarge => textTheme.titleLarge!;

  static TextStyle get labelSmall => textTheme.labelSmall!;

  static TextStyle get labelMedium => textTheme.labelMedium!;

  static TextStyle get labelLarge => textTheme.labelLarge!;

  static TextStyle get bodySmall => textTheme.bodySmall!;

  static TextStyle get bodyMedium => textTheme.bodyMedium!;

  static TextStyle get bodyLarge => textTheme.bodyLarge!;

  static List<BoxShadow> get defaultBoxShadow {
    return [
      BoxShadow(
        color: Theme.of(rootContext).shadowColor,
        offset: const Offset(0, 4),
        blurRadius: 10,
        spreadRadius: 1,
      ).scale(2),
    ];
  }

  static BoxDecoration get defaultDecoration {
    return BoxDecoration(
      color: Theme.of(rootContext).canvasColor,
      border: MyTheme.border,
      boxShadow: defaultBoxShadow,
      borderRadius: BorderRadius.circular(8),
    );
  }

  static BoxDecoration getDefaultDecoration([
    double radius = 8,
    double borderWidth = 1,
  ]) {
    return BoxDecoration(
      color: Theme.of(rootContext).canvasColor,
      border: Border.all(color: borderColor, width: borderWidth),
      boxShadow: defaultBoxShadow,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static BorderSide dividerSideWithWidth(double width) =>
      BorderSide(color: Theme.of(rootContext).dividerColor, width: width);

  static BorderSide borderSideWithWidth(double width) =>
      BorderSide(color: borderColor, width: width);

  static BorderSide get borderSide => borderSideWithWidth(0.8);

  static BorderSide get dividerSide => dividerSideWithWidth(0.5);

  static Border borderWithWidth(double width) =>
      Border.fromBorderSide(borderSideWithWidth(width));

  static Border dividerWithWidth(double width) =>
      Border.fromBorderSide(dividerSideWithWidth(width));

  static Border get border => borderWithWidth(0.5);

  static Border get divider => dividerWithWidth(1);

  static Border get topBorder => Border(top: borderSide);

  static Border get bottomBorder => Border(bottom: borderSide);

  static Border get topDivider => Border(top: dividerSide);

  static Border get bottomDivider => Border(bottom: dividerSide);

  static Border bottomDividerWithWidth(double? width) => width != null
      ? Border(bottom: dividerSideWithWidth(width))
      : bottomDivider;

  static Border bottomBorderWithWidth(double width) =>
      Border(bottom: borderSideWithWidth(width));

  static Border get rightBorder => Border(right: borderSide);

  static Border get rightDivider => Border(right: dividerSide);

  static Border? get responsiveBottomBorder {
    return ResponsiveUtil.isLandscape() ? bottomBorder : bottomBorder;
  }

  static Border? get responsiveCardBottomBorder {
    return ResponsiveUtil.isLandscape() ? null : bottomBorder;
  }

  static BorderRadius get responsiveBorderRadius {
    return ResponsiveUtil.isLandscape() ? BorderRadius.zero : BorderRadius.zero;
  }

  static BorderRadius get responsiveCardBorderRadius {
    return ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
  }

  static Border get bottomBorderWithCanvas {
    return Border(
      bottom: BorderSide(color: MyTheme.itemBackground, width: 1),
    );
  }

  static getBackground(BuildContext context) {
    return Utils.currentBrightness(context) == Brightness.light
        ? canvasColor
        : scaffoldBackgroundColor;
  }

  static getCardBackground(BuildContext context) {
    return Utils.currentBrightness(context) == Brightness.light
        ? scaffoldBackgroundColor
        : canvasColor;
  }

  static Color get background {
    return Utils.currentBrightness(rootContext) == Brightness.light
        ? scaffoldBackgroundColor
        : scaffoldBackgroundColor;
  }

  static Color get itemBackground {
    return Utils.currentBrightness(rootContext) == Brightness.light
        ? canvasColor
        : scaffoldBackgroundColor;
  }

  static Color get cardItemBackground {
    if (ResponsiveUtil.isLandscape()) {
      return canvasColor;
    }
    return Utils.currentBrightness(rootContext) == Brightness.light
        ? canvasColor
        : scaffoldBackgroundColor;
  }

  static Color get appBarAndTabBarBackground {
    if (ResponsiveUtil.isLandscape()) {
      return canvasColor;
    }
    return Utils.currentBrightness(rootContext) == Brightness.light
        ? canvasColor
        : scaffoldBackgroundColor;
  }

  static Color get primaryColor => Theme.of(rootContext).primaryColor;

  static Color get primaryColor120 =>
      Theme.of(rootContext).primaryColor.withAlpha(120);

  static Color get primaryColor60 =>
      Theme.of(rootContext).primaryColor.withAlpha(60);

  static Color get primaryColor40 =>
      Theme.of(rootContext).primaryColor.withAlpha(40);

  static Color get primaryColor40WithoutAlpha =>
      Utils.convertAlphaToOpaque(primaryColor40);

  static Color get canvasColor => Theme.of(rootContext).canvasColor;

  static Color get scaffoldBackgroundColor =>
      Theme.of(rootContext).scaffoldBackgroundColor;

  static Color get dividerColor => Theme.of(rootContext).dividerColor;

  static ThemeColorData get themeColorData => Utils.isDark(rootContext)
      ? appProvider.darkTheme
      : appProvider.lightTheme;

  static Color get borderColor => themeColorData.borderColor;

  static Color get textLightGreyColor => themeColorData.textLightGreyColor;

  static Color get textDarkGreyColor => themeColorData.textDarkGreyColor;

  static Color get successColor => themeColorData.successColor;

  static Color get warningColor => themeColorData.warningColor;

  static Color get errorColor => themeColorData.errorColor;

  static Color get buttonLightHoverColor =>
      themeColorData.buttonLightHoverColor;

  static Color get barrierColor =>
      MyTheme.scaffoldBackgroundColor.withValues(alpha: 0.7);
}
