part of '../tdapi.dart';

class ResendRecoveryEmailAddressCode extends TdFunction {
  /// Resends the 2-step verification recovery email address verification code
  ResendRecoveryEmailAddressCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) {
    return ResendRecoveryEmailAddressCode(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resendRecoveryEmailAddressCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
