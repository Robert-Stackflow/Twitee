// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'self_thread.freezed.dart';
part 'self_thread.g.dart';

@Freezed()
class SelfThread with _$SelfThread {
  const factory SelfThread({
    @JsonKey(name: 'id_str')
    required String idStr,
  }) = _SelfThread;
  
  factory SelfThread.fromJson(Map<String, Object?> json) => _$SelfThreadFromJson(json);
}
