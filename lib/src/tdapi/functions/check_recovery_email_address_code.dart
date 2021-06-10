part of '../tdapi.dart';

class CheckRecoveryEmailAddressCode extends TdFunction {
  /// Checks the 2-step verification recovery email address verification code
  CheckRecoveryEmailAddressCode({required this.code, this.extra});

  /// [code] Verification code
  String code;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) {
    return CheckRecoveryEmailAddressCode(
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

  static const CONSTRUCTOR = 'checkRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
