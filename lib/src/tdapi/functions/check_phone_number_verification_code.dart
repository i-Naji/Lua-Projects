part of '../tdapi.dart';

class CheckPhoneNumberVerificationCode extends TdFunction {
  /// Checks the phone number verification code for Telegram Passport
  CheckPhoneNumberVerificationCode({required this.code, this.extra});

  /// [code] Verification code
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) {
    return CheckPhoneNumberVerificationCode(
      code: json['code'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
