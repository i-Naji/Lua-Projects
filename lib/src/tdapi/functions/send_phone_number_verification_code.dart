part of '../tdapi.dart';

class SendPhoneNumberVerificationCode extends TdFunction {
  /// Sends a code to verify a phone number to be added to a user's Telegram Passport
  SendPhoneNumberVerificationCode(
      {required this.phoneNumber, required this.settings, this.extra});

  /// [phoneNumber] The phone number of the user, in international format
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) {
    return SendPhoneNumberVerificationCode(
      phoneNumber: json['phone_number'] ?? "",
      settings: PhoneNumberAuthenticationSettings.fromJson(
          json['settings'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPhoneNumberVerificationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
