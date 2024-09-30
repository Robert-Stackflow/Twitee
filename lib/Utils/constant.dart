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

import 'package:twitee/Utils/responsive_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:local_auth_android/local_auth_android.dart';

import '../generated/l10n.dart';

const defaultPhone = "";
const defaultPassword = "";
const defaultLofterID = "";

const defaultMaxBackupCount = 100;

const maxBackupCountThrehold = 500;

const maxBytesLength = 1000;

const double kLoadExtentOffset = 1000;

const Widget emptyWidget = SizedBox.shrink();

const defaultWindowSize = Size(1120, 740);

const minimumSize = Size(640, 640);

const double autoCopyNextCodeProgressThrehold = 0.25;
const int defaultHOTPPeriod = 15;
const String placeholderText = "*";
const String hotpPlaceholderText = "*";

const bool defaultEnableSafeMode = true;

const windowsKeyPath = r'SOFTWARE\Cloudchewie\Twitee';

const appLicense = "GPL-3.0";

String shareAppText = S.current.shareAppText(officialWebsite);
const String feedbackEmail = "2014027378@qq.com";
String feedbackSubject = S.current.feedbackSubject;
const String feedbackBody = "";
const List<Locale> websiteSupportLocales = [Locale("en"), Locale("zh", "CN")];
const String downloadPkgsUrl = "https://pkgs.cloudchewie.com/Twitee";
const String officialWebsite = "https://apps.cloudchewie.com/twitee";
const String defaultDownloadsWebsite =
    "https://apps.cloudchewie.com/twitee/downloads";
const String downloadsWebsite =
    "https://apps.cloudchewie.com/{locale}/twitee/downloads";
const String sqlcipherLearnMore =
    "https://apps.cloudchewie.com/twitee/sqlcipher/";
const String telegramLink = "https://t.me/Twitee";
const String repoUrl = "https://github.com/Robert-Stackflow/Twitee";
const String releaseUrl =
    "https://github.com/Robert-Stackflow/Twitee/releases";
const String issueUrl = "https://github.com/Robert-Stackflow/Twitee/issues";
const String privacyPolicyWebsite =
    "https://apps.cloudchewie.com/twitee/privacy/";
const String serviceTermWebsite =
    "https://apps.cloudchewie.com/twitee/service/";

AndroidAuthMessages androidAuthMessages = AndroidAuthMessages(
  cancelButton: S.current.biometricCancelButton,
  goToSettingsButton: S.current.biometricGoToSettingsButton,
  biometricNotRecognized: S.current.biometricNotRecognized,
  goToSettingsDescription: S.current.biometricGoToSettingsDescription,
  biometricHint: ResponsiveUtil.isWindows()
      ? S.current.biometricReasonWindows("Twitee")
      : S.current.biometricReason("Twitee"),
  biometricSuccess: S.current.biometricSuccess,
  signInTitle: S.current.biometricSignInTitle,
  deviceCredentialsRequiredTitle:
      S.current.biometricDeviceCredentialsRequiredTitle,
);

RegExp otpauthMigrationReg =
    RegExp(r"^otpauth-migration://offline\?data=(.*)$");
RegExp otpauthReg = RegExp(r"^otpauth://([a-z]+)/([^?]*)(.*)$");
RegExp motpReg = RegExp(r"^motp://([^?]+)\?secret=([a-fA-F\d]+)(.*)$");
RegExp twiteeauthMigrationReg =
    RegExp(r"^twiteeauth-migration://offline\?tokens=(.*)$");
RegExp twiteeauthCategoryMigrationReg =
    RegExp(r"^twiteeauth-migration://offline\?categories=(.*)$");
