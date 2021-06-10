part of '../tdapi.dart';

class RecoverPassword extends TdFunction {
  /// Recovers the password using a recovery code sent to an email address that was previously set up
  RecoverPassword({required this.recoveryCode, this.extra});

  /// [recoveryCode] Recovery code to check
  String recoveryCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RecoverPassword.fromJson(Map<String, dynamic> json) {
    return RecoverPassword(
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

  static const CONSTRUCTOR = 'recoverPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
