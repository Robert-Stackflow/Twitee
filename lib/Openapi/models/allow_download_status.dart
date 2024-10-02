// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'allow_download_status.freezed.dart';
part 'allow_download_status.g.dart';

@Freezed()
class AllowDownloadStatus with _$AllowDownloadStatus {
  const factory AllowDownloadStatus({
    @JsonKey(name: 'allow_download')
    required bool allowDownload,
  }) = _AllowDownloadStatus;
  
  factory AllowDownloadStatus.fromJson(Map<String, Object?> json) => _$AllowDownloadStatusFromJson(json);
}
