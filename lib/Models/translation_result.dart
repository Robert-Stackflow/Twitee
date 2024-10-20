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

import '../Openapi/models/entities.dart';

class TranslationResult {
  TranslationResult({
    required this.id,
    required this.idStr,
    required this.translation,
    required this.entities,
    required this.translationState,
    required this.sourceLanguage,
    required this.localizedSourceLanguage,
    required this.destinationLanguage,
    required this.translationSource,
  });

  final String id;
  final String idStr;
  final String translation;
  final Entities entities;
  final String translationState;
  final String sourceLanguage;
  final String localizedSourceLanguage;
  final String destinationLanguage;
  final String translationSource;

  factory TranslationResult.fromJson(Map<String, dynamic> json) =>
      TranslationResult(
        id: json['id'] ?? "",
        idStr: json['id_str'] ?? "",
        translation: json['translation'],
        entities: Entities.fromJsonWithoutMedia(json['entities']),
        translationState: json['translationState'] ?? "",
        sourceLanguage: json['sourceLanguage'] ?? "",
        localizedSourceLanguage: json['localizedSourceLanguage'] ?? "",
        destinationLanguage: json['destinationLanguage'] ?? "",
        translationSource: json['translationSource'] ?? "",
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'id_str': idStr,
        'translation': translation,
        'entities': entities.toJson(),
        'translationState': translationState,
        'sourceLanguage': sourceLanguage,
        'localizedSourceLanguage': localizedSourceLanguage,
        'destinationLanguage': destinationLanguage,
        'translationSource': translationSource,
      };
}
