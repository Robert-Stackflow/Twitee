// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'communities_actions.g.dart';

@JsonSerializable()
class CommunitiesActions {
  const CommunitiesActions({
    required this.create,
  });

  factory CommunitiesActions.fromJson(Map<String, Object?> json) =>
      _$CommunitiesActionsFromJson(json);

  final bool create;

  Map<String, Object?> toJson() => _$CommunitiesActionsToJson(this);
}
