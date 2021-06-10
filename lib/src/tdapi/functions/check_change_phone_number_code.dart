part of '../tdapi.dart';

class CheckChangePhoneNumberCode extends TdFunction {
  /// Checks the authentication code sent to confirm a new phone number of the user
  CheckChangePhoneNumberCode({required this.code, this.extra});

  /// [code] Verification code received by SMS, phone call or flash call
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckChangePhoneNumberCode.fromJson(Map<String, dynamic> json) {
    return CheckChangePhoneNumberCode(
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

  static const CONSTRUCTOR = 'checkChangePhoneNumberCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
