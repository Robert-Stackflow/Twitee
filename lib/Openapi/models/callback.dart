// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'callback.freezed.dart';
part 'callback.g.dart';

@Freezed()
 class Callback with _$Callback {
  const factory Callback({
    required String endpoint,
  }) = _Callback;
  
  factory Callback.fromJson(Map<String, Object?> json) => _$CallbackFromJson(json);
}
