part of '../tdapi.dart';

class ResendEmailAddressVerificationCode extends TdFunction {
  /// Re-sends the code to verify an email address to be added to a user's Telegram Passport
  ResendEmailAddressVerificationCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendEmailAddressVerificationCode.fromJson(
      Map<String, dynamic> json) {
    return ResendEmailAddressVerificationCode(
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

  static const CONSTRUCTOR = 'resendEmailAddressVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
