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
  checkUsername("LoginEnterUserIdentifierSSO"),
  denyLoginSubtask("DenyLoginSubtask"),
  arkoseLogin("ArkoseLogin"),
  checkAlternativeUsername("LoginEnterAlternateIdentifierSubtask"),
  checkPassword("LoginEnterPassword"),
  resetPassword("RedirectToPasswordReset"),
  check2FA("LoginTwoFactorAuthChallenge"),
  loginAcid("LoginAcid"),
  checkAnother2FA("LoginTwoFactorAuthChooseMethod"),
  cannotAccess2FA("login_security_key_not_supported_cta"),
  loginSuccess("LoginSuccessSubtask");

  final String subTaskName;

  const LoginPhase(this.subTaskName);

  static List<LoginPhase> phases = [
    checkUsername,
    checkAlternativeUsername,
    checkPassword,
    loginAcid,
    check2FA,
    checkAnother2FA,
    loginSuccess,
  ];
}
