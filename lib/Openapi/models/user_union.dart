// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'user.dart';
import 'user_unavailable.dart';

abstract class UserUnion {
  const UserUnion();
  factory UserUnion.fromJson(Map<String, Object?> json) {
    switch (json['__typename']) {
      case "User":
        return User.fromJson(json);
      case "UserUnavailable":
        return UserUnavailable.fromJson(json);

      default:
        throw ArgumentError('Unknown UserUnion: $json');
    }
  }
  Map<String, Object?> toJson() => {};
}
