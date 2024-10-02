// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'communities_actions.freezed.dart';
part 'communities_actions.g.dart';

@Freezed()
class CommunitiesActions with _$CommunitiesActions {
  const factory CommunitiesActions({
    required bool create,
  }) = _CommunitiesActions;
  
  factory CommunitiesActions.fromJson(Map<String, Object?> json) => _$CommunitiesActionsFromJson(json);
}
