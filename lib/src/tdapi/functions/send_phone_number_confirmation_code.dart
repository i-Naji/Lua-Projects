part of '../tdapi.dart';

class SendPhoneNumberConfirmationCode extends TdFunction {
  /// Sends phone number confirmation code. Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or "tg://confirmphone?phone=*******&hash=**********" link
  SendPhoneNumberConfirmationCode(
      {required this.hash,
      required this.phoneNumber,
      required this.settings,
      this.extra});

  /// [hash] Value of the "hash" parameter from the link
  String hash;

  /// [phoneNumber] Value of the "phone" parameter from the link
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) {
    return SendPhoneNumberConfirmationCode(
      hash: json['hash'] ?? "",
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
      "hash": this.hash,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPhoneNumberConfirmationCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
