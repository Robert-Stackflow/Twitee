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

enum LoginPhase {
  checkUsername(0, "LoginEnterUserIdentifierSSO"),
  denyLoginSubtask(-1, "DenyLoginSubtask"),
  arkoseLogin(-1, "ArkoseLogin"),
  checkAlternativeUsername(1, "LoginEnterAlternateIdentifierSubtask"),
  checkPassword(2, "LoginEnterPassword"),
  resetPassword(-1, "RedirectToPasswordReset"),
  check2FA(3, "LoginTwoFactorAuthChallenge"),
  checkAnother2FA(4, "LoginTwoFactorAuthChooseMethod"),
  cannotAccess2FA(-1, "login_security_key_not_supported_cta"),
  loginSuccess(5, "LoginSuccessSubtask");

  final int phaseIndex;
  final String subTaskName;

  const LoginPhase(this.phaseIndex, this.subTaskName);

  static List<LoginPhase> phases = [
    checkUsername,
    checkAlternativeUsername,
    checkPassword,
    check2FA,
    checkAnother2FA,
    loginSuccess,
  ];
}
