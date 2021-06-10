part of '../tdapi.dart';

class PasswordState extends TdObject {
  /// Represents the current state of 2-step verification
  PasswordState(
      {required this.hasPassword,
      required this.passwordHint,
      required this.hasRecoveryEmailAddress,
      required this.hasPassportData,
      this.recoveryEmailAddressCodeInfo,
      this.extra});

  /// [hasPassword] True, if a 2-step verification password is set
  bool hasPassword;

  /// [passwordHint] Hint for the password; may be empty
  String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email is set
  bool hasRecoveryEmailAddress;

  /// [hasPassportData] True, if some Telegram Passport elements were saved
  bool hasPassportData;

  /// [recoveryEmailAddressCodeInfo] Information about the recovery email address to which the confirmation email was sent; may be null
  EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PasswordState.fromJson(Map<String, dynamic> json) {
    return PasswordState(
      hasPassword: json['has_password'] ?? false,
      passwordHint: json['password_hint'] ?? "",
      hasRecoveryEmailAddress: json['has_recovery_email_address'] ?? false,
      hasPassportData: json['has_passport_data'] ?? false,
      recoveryEmailAddressCodeInfo: EmailAddressAuthenticationCodeInfo.fromJson(
          json['recovery_email_address_code_info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_password": this.hasPassword,
      "password_hint": this.passwordHint,
      "has_recovery_email_address": this.hasRecoveryEmailAddress,
      "has_passport_data": this.hasPassportData,
      "recovery_email_address_code_info":
          this.recoveryEmailAddressCodeInfo == null
              ? null
              : this.recoveryEmailAddressCodeInfo!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passwordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
