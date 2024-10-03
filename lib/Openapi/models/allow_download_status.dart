// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'allow_download_status.g.dart';

@JsonSerializable()
class AllowDownloadStatus  {
  const AllowDownloadStatus({
    required this.allowDownload,
  });
  
  factory AllowDownloadStatus.fromJson(Map<String, Object?> json) => _$AllowDownloadStatusFromJson(json);
  
  @JsonKey(name: 'allow_download')
  final bool? allowDownload;

  Map<String, Object?> toJson() => _$AllowDownloadStatusToJson(this);
}
