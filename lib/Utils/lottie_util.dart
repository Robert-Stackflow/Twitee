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

import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:twitee/Utils/responsive_util.dart';
import 'package:twitee/Utils/utils.dart';

class LottieUtil {
  static const String brightness = "assets/lottie/brightness.json";
  static const String celebrate = "assets/lottie/celebrate.json";
  static const String loadingCircularDark =
      "assets/lottie/loading_circular_dark.json";
  static const String loadingCircularLight =
      "assets/lottie/loading_circular_light.json";
  static const String moonLight = "assets/lottie/moon_light.json";
  static const String sunLight = "assets/lottie/sun_light.json";

  static Transform load(
    String path, {
    double size = 40,
    bool? autoForward,
    AnimationController? controller,
    Function()? onLoaded,
    BoxFit? fit,
    double scale = 1.0,
  }) {
    return Transform.scale(
      scale: scale,
      child: Lottie.asset(
        path,
        width: size,
        height: size,
        fit: fit,
        controller: controller,
        alignment: Alignment.bottomCenter,
        addRepaintBoundary: true,
        renderCache:
            ResponsiveUtil.isIOS() ? RenderCache.drawingCommands : null,
        onLoaded: (composition) {
          if (controller != null) {
            controller.duration = composition.duration;
            if (autoForward == true) controller.value = 1;
          }
          onLoaded?.call();
        },
      ),
    );
  }

  static String getLoadingPath(
    BuildContext context, {
    bool forceDark = false,
  }) {
    return Utils.isDark(context) || forceDark
        ? loadingCircularDark
        : loadingCircularLight;
  }
}
