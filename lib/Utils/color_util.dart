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
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:twitee/Utils/image_util.dart';

class ColorUtil {
  static bool areColorsSimilar(int color1, int color2,
      [double threshold = 50.0]) {
    int r1 = (color1 >> 16) & 0xFF;
    int g1 = (color1 >> 8) & 0xFF;
    int b1 = color1 & 0xFF;

    int r2 = (color2 >> 16) & 0xFF;
    int g2 = (color2 >> 8) & 0xFF;
    int b2 = color2 & 0xFF;

    double distance = sqrt(pow(r2 - r1, 2) + pow(g2 - g1, 2) + pow(b2 - b1, 2));
    return distance < threshold;
  }

  static Color getComplementaryColor(Color color) {
    return Color.fromARGB(
      color.alpha,
      255 - color.red,
      255 - color.green,
      255 - color.blue,
    );
  }

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static String colorToHex(Color color) {
    return "#${color.value.toRadixString(16).substring(2, 8)}";
  }

  static Future<EncodedImage> _getImagePixelsByUrl(String url) async {
    final Completer<EncodedImage> completer = Completer();
    final ImageStream stream =
        CachedNetworkImageProvider(url).resolve(const ImageConfiguration());
    final listener =
        ImageStreamListener((ImageInfo info, bool synchronousCall) async {
      final ByteData? data = await info.image.toByteData();
      if (data != null && !completer.isCompleted) {
        completer.complete(
            EncodedImage(data, width: 1, height: data.lengthInBytes ~/ 4));
      }
    });
    stream.addListener(listener);
    final EncodedImage encodedImage = await completer.future;
    stream.removeListener(listener);
    return encodedImage;
  }

  static Future<EncodedImage> _getImagePixelsByFile(File file) async {
    final Completer<EncodedImage> completer = Completer();
    final ImageStream stream =
        FileImage(file).resolve(const ImageConfiguration());
    final listener =
        ImageStreamListener((ImageInfo info, bool synchronousCall) async {
      final ByteData? data = await info.image.toByteData();
      if (data != null && !completer.isCompleted) {
        completer.complete(
            EncodedImage(data, width: 1, height: data.lengthInBytes ~/ 4));
      }
    });
    stream.addListener(listener);
    final EncodedImage encodedImage = await completer.future;
    stream.removeListener(listener);
    return encodedImage;
  }

  static FutureOr<PaletteGenerator> _getPaletteGenerator(
    EncodedImage encodedImage,
  ) async {
    final Completer<PaletteGenerator> completer = Completer();
    PaletteGenerator.fromByteData(encodedImage).then((paletteGenerator) {
      completer.complete(paletteGenerator);
    });
    return await completer.future;
  }

  static Future<PaletteGenerator> getPaletteGenerator(
    String imageUrl, {
    BuildContext? context,
    bool getByFile = true,
  }) async {
    late final EncodedImage encodedImage;
    if (getByFile && context != null) {
      File file = await ImageUtil.getImageFile(context, imageUrl);
      encodedImage = await _getImagePixelsByFile(file);
    } else {
      encodedImage = await _getImagePixelsByUrl(imageUrl);
    }
    PaletteGenerator generator =
        await compute(_getPaletteGenerator, encodedImage);
    return generator;
  }

  static Future<List<Color>> getMainColors(
    BuildContext context,
    List<String> imageUrls, {
    Function()? onFinished,
  }) async {
    List<Color> mainColors = List.filled(imageUrls.length, Colors.black);
    for (var e in imageUrls) {
      int index = imageUrls.indexOf(e);
      await ColorUtil.getPaletteGenerator(e, context: context)
          .then((paletteGenerator) {
        if (paletteGenerator.darkMutedColor != null) {
          mainColors[index] = paletteGenerator.darkMutedColor!.color;
        } else if (paletteGenerator.darkVibrantColor != null) {
          mainColors[index] = paletteGenerator.darkVibrantColor!.color;
        }
      });
    }
    return mainColors;
  }
}
