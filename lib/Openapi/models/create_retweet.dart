// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'retweet.dart';

part 'create_retweet.g.dart';

@JsonSerializable()
class CreateRetweet {
  const CreateRetweet({
    required this.result,
  });

  factory CreateRetweet.fromJson(Map<String, Object?> json) =>
      _$CreateRetweetFromJson(json);

  final Retweet result;

  Map<String, Object?> toJson() => _$CreateRetweetToJson(this);
}
