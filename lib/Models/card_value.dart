/*
 * Copyright (c) 2025 Robert-Stackflow.
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

import '../Openapi/models/tweet_card_legacy_binding_value.dart';
import '../Openapi/models/tweet_card_legacy_binding_value_data_image.dart';

enum CardBindingKeyEnum {
  vanityUrl("vanity_url"),
  photoImageFullSizeLarge("photo_image_full_size_large"),
  thumbnailImage("thumbnail_image"),
  description("description"),
  domain("domain"),
  thumbnailImageLarge("thumbnail_image_large"),
  summaryPhotoImageSmall("summary_photo_image_small"),
  thumbnailImageOriginal("thumbnail_image_original"),
  photoImageFullSizeSmall("photo_image_full_size_small"),
  summaryPhotoImageLarge("summary_photo_image_large"),
  thumbnailImageSmall("thumbnail_image_small"),
  thumbnailImageXLarge("thumbnail_image_x_large"),
  photoImageFullSizeOriginal("photo_image_full_size_original"),
  photoImageFullSize("photo_image_full_size"),
  thumbnailImageColor("thumbnail_image_color"),
  title("title"),
  summaryPhotoImageColor("summary_photo_image_color"),
  summaryPhotoImageXLarge("summary_photo_image_x_large"),
  summaryPhotoImage("summary_photo_image"),
  photoImageFullSizeColor("photo_image_full_size_color"),
  photoImageFullSizeXLarge("photo_image_full_size_x_large"),
  cardUrl("card_url"),
  summaryPhotoImageOriginal("summary_photo_image_original");

  final String key;

  const CardBindingKeyEnum(this.key);
}

enum DataType {
  IMAGE,
  IMAGE_COLOR,
  STRING;

  static fromString(String value) {
    return DataType.values.firstWhere(
        (e) => e.toString().split('.').last == value,
        orElse: () => STRING);
  }
}

abstract class CardValueUnion {}

class ImageValue extends CardValueUnion {
  final int height;
  final int width;
  final String url;
  final String alt;

  ImageValue(
      {required this.height,
      required this.width,
      required this.url,
      required this.alt});

  factory ImageValue.fromValue(TweetCardLegacyBindingValueDataImage json) =>
      ImageValue(
        height: json.height,
        width: json.width,
        url: json.url,
        alt: json.alt ?? "",
      );
}

class RGB {
  final int red;
  final int green;
  final int blue;

  RGB({required this.red, required this.green, required this.blue});

  factory RGB.fromJson(Map<String, dynamic> json) => RGB(
        red: json['red'],
        green: json['green'],
        blue: json['blue'],
      );
}

class ColorPalette {
  final RGB rgb;
  final double percentage;

  ColorPalette({required this.rgb, required this.percentage});

  factory ColorPalette.fromJson(Map<String, dynamic> json) => ColorPalette(
        rgb: RGB.fromJson(json['rgb']),
        percentage: json['percentage'],
      );
}

class ImageColorValue extends CardValueUnion {
  final List<ColorPalette> palette;

  ImageColorValue({required this.palette});

  factory ImageColorValue.fromJson(Map<String, dynamic> json) =>
      ImageColorValue(
        palette: (json['palette'] as List)
            .map((e) => ColorPalette.fromJson(e))
            .toList(),
      );
}

class StringValue extends CardValueUnion {
  final String value;

  StringValue({required this.value});
}

class CardBindingItem {
  final String key;
  final DataType type;
  final CardValueUnion value;

  CardBindingItem({
    required this.key,
    required this.type,
    required this.value,
  });

  factory CardBindingItem.fromValue(TweetCardLegacyBindingValue json) {
    DataType dataType = DataType.fromString(json.value.type);
    CardValueUnion value;
    switch (dataType) {
      case DataType.IMAGE:
        value = ImageValue.fromValue(json.value.imageValue!);
        break;
      case DataType.IMAGE_COLOR:
        value = StringValue(value: "");
        break;
      case DataType.STRING:
        value = StringValue(value: json.value.stringValue ?? "");
        break;
    }

    return CardBindingItem(
      key: json.key,
      type: dataType,
      value: value,
    );
  }
}

class CardBindings {
  final List<CardBindingItem> items;

  CardBindings({required this.items});

  String getStringValue(CardBindingKeyEnum key) {
    CardBindingItem item = items.firstWhere(
      (element) => element.key == key.key,
      orElse: () => CardBindingItem(
        key: key.key,
        type: DataType.STRING,
        value: StringValue(value: ''),
      ),
    );
    if (item.type == DataType.STRING) {
      return (item.value as StringValue).value;
    } else {
      return '';
    }
  }

  ImageValue? getImageValue(CardBindingKeyEnum key) {
    List<CardBindingItem> imageItems = items
        .where((element) => element.type == DataType.IMAGE)
        .toList(growable: false);
    for (var item in imageItems) {
      if (item.key == key.key) {
        return item.value as ImageValue;
      }
    }
    return null;
  }

  factory CardBindings.fromList(List<TweetCardLegacyBindingValue?>? list) {
    if (list == null) {
      return CardBindings(items: []);
    }

    List<CardBindingItem> items =
        list.map((e) => CardBindingItem.fromValue(e!)).toList(growable: false);

    return CardBindings(items: items);
  }
}
