part of '../tdapi.dart';

class CheckAuthenticationCode extends TdFunction {
  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode
  CheckAuthenticationCode({required this.code, this.extra});

  /// [code] The verification code received via SMS, Telegram message, phone call, or flash call
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckAuthenticationCode.fromJson(Map<String, dynamic> json) {
    return CheckAuthenticationCode(
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

  static const CONSTRUCTOR = 'checkAuthenticationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
