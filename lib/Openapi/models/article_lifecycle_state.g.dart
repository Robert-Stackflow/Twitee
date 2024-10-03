// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_lifecycle_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleLifecycleState _$ArticleLifecycleStateFromJson(
        Map<String, dynamic> json) =>
    ArticleLifecycleState(
      modifiedAtSecs: (json['modified_at_secs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ArticleLifecycleStateToJson(
        ArticleLifecycleState instance) =>
    <String, dynamic>{
      'modified_at_secs': instance.modifiedAtSecs,
    };
