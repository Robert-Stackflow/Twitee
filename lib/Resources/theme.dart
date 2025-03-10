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
import 'package:twitee/Utils/responsive_util.dart';

import '../Utils/app_provider.dart';
import '../Utils/utils.dart';
import 'colors.dart';
import 'styles.dart';

class MyTheme {
  MyTheme._();

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
      border: Border.all(color: Theme.of(rootContext).dividerColor, width: 1),
      boxShadow: defaultBoxShadow,
      borderRadius: BorderRadius.circular(10),
    );
  }

  static BoxDecoration getDefaultDecoration(
      [double radius = 10, double borderWidth = 1]) {
    return BoxDecoration(
      color: Theme.of(rootContext).canvasColor,
      border: Border.all(
          color: Theme.of(rootContext).dividerColor, width: borderWidth),
      boxShadow: defaultBoxShadow,
      borderRadius: BorderRadius.circular(radius),
    );
  }

  static EdgeInsetsGeometry get responsiveListFlowPadding {
    return ResponsiveUtil.isLandscape()
        ? const EdgeInsets.all(8).add(const EdgeInsets.only(bottom: 16))
        : const EdgeInsets.only(bottom: 16);
  }

  static double get responsiveMainAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 6 : 0;
  }

  static double get responsiveCrossAxisSpacing {
    return ResponsiveUtil.isLandscape() ? 6 : 0;
  }

  static double get responsiveMainAxisSpacingForMedia {
    return ResponsiveUtil.isLandscape() ? 6 : 2;
  }

  static double get responsiveCrossAxisSpacingForMedia {
    return ResponsiveUtil.isLandscape() ? 6 : 2;
  }

  static Border get bottomBorder {
    return Border(
      bottom: BorderSide(color: Theme.of(rootContext).dividerColor, width: 0.5),
    );
  }

  static Border get border {
    return Border.all(color: Theme.of(rootContext).dividerColor, width: 0.5);
  }

  static BorderSide get borderSide {
    return BorderSide(color: Theme.of(rootContext).dividerColor, width: 0.5);
  }

  static Border? get responsiveBottomBorder {
    return ResponsiveUtil.isLandscape() ? null : bottomBorder;
  }

  static BorderRadius get responsiveBorderRadius {
    return ResponsiveUtil.isLandscape()
        ? BorderRadius.circular(8)
        : BorderRadius.zero;
  }

  static Border get bottomBorderWithCanvas {
    return Border(
      bottom: BorderSide(color: MyTheme.itemBackground, width: 1),
    );
  }

  bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

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

  static const TextTheme textTheme = TextTheme(
    headlineMedium: display1,
    headlineSmall: headline,
    titleLarge: title,
    titleSmall: subtitle,
    bodyMedium: body2,
    bodyLarge: body1,
    bodySmall: caption,
  );
  static const TextStyle display1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
  );

  static const TextStyle headline = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
  );

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
  );

  static const TextStyle itemTitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.1,
  );

  static const TextStyle itemTitleLittle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.1,
  );

  static const TextStyle itemTip = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    letterSpacing: 0.1,
  );

  static const TextStyle itemTipLittle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 11,
    letterSpacing: 0.1,
  );

  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
  );

  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
  );

  static const TextStyle caption = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
  );

  static Color get background {
    return Theme.of(rootContext).scaffoldBackgroundColor;
    // return Utils.currentBrightness(rootContext) == Brightness.light
    //     ? Theme.of(rootContext).scaffoldBackgroundColor
    //     : Theme.of(rootContext).canvasColor;
  }

  static Color get itemBackground {
    if (ResponsiveUtil.isLandscape()) {
      return Theme.of(rootContext).canvasColor;
    }
    return Utils.currentBrightness(rootContext) == Brightness.light
        ? Theme.of(rootContext).canvasColor
        : Theme.of(rootContext).scaffoldBackgroundColor;
  }

  static TextStyle get titleSmall => textTheme.titleSmall!;

  static TextStyle get titleMedium => textTheme.titleMedium!;

  static TextStyle get titleLarge => textTheme.titleLarge!;

  static TextStyle get labelSmall => textTheme.labelSmall!;

  static TextStyle get labelMedium => textTheme.labelMedium!;

  static TextStyle get labelLarge => textTheme.labelLarge!;

  static TextStyle get bodySmall => textTheme.bodySmall!;

  static TextStyle get bodyMedium => textTheme.bodyMedium!;

  static TextStyle get bodyLarge => textTheme.bodyLarge!;

  static Color get canvasColor => Theme.of(rootContext).canvasColor;

  static Color get cardColor => Theme.of(rootContext).cardColor;

  static Color get scaffoldBackgroundColor =>
      Theme.of(rootContext).scaffoldBackgroundColor;

  static Color get dividerColor => Theme.of(rootContext).dividerColor;
}
