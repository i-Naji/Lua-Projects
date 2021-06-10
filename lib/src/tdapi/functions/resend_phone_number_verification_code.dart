part of '../tdapi.dart';

class ResendPhoneNumberVerificationCode extends TdFunction {
  /// Re-sends the code to verify a phone number to be added to a user's Telegram Passport
  ResendPhoneNumberVerificationCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResendPhoneNumberVerificationCode.fromJson(
      Map<String, dynamic> json) {
    return ResendPhoneNumberVerificationCode(
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

  static const CONSTRUCTOR = 'resendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
