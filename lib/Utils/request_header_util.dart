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

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:twitee/Utils/utils.dart';

class RequestHeaderUtil {
  static const String defaultAuthentication =
      "Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA";

  static const String defaultUA =
      "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0";

  static const String defaultForward = "ffae6b0ad5900b5c0f7aaecda11b845111487f41d7f79cd4dd6b44f7b7d2d68188842dea6b5c7c565ce5b8acb9d4f118a548300b414c545bc83db8c7f9de73887562ad7bddddb8be3d005afccc25fb164787ea04b089450971d178e23859f1b0bdd03d263d9981c051592fd3f3e4186efa038ad3a4d042e0931c984c0b1abf9724f4c51df49544b57a55f83b03fa790b8c5e050da192c77c74633d0875767c914c6a844aa7b4c7cbb153583f27ae2616de1d39c6894999a464485d056aa8615a65986d9841f6cc43d35596080cd9889b595e6130ee9c3acef982c94f46fdd0a67aaca353790e7de570dd23e3e8eee1878a4d5b9186a486d736b02abd601536dff69465a8da6dd3b3";

  static String getXReqId({int length = 8}) {
    return Utils.getRandomString(length: length);
  }

  static String generateTransactionId({int byteLength = 75}) {
    final random = Random.secure();
    final bytes = Uint8List(byteLength);
    for (int i = 0; i < byteLength; i++) {
      bytes[i] = random.nextInt(256);
    }
    return base64Url.encode(bytes).replaceAll('=', '');
  }
}
