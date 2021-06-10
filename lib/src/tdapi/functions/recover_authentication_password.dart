part of '../tdapi.dart';

class RecoverAuthenticationPassword extends TdFunction {
  /// Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
  RecoverAuthenticationPassword({required this.recoveryCode, this.extra});

  /// [recoveryCode] Recovery code to check
  String recoveryCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RecoverAuthenticationPassword.fromJson(Map<String, dynamic> json) {
    return RecoverAuthenticationPassword(
      recoveryCode: json['recovery_code'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "recovery_code": this.recoveryCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'recoverAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
