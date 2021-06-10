part of '../tdapi.dart';

class SetAuthenticationPhoneNumber extends TdFunction {
  /// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
  SetAuthenticationPhoneNumber(
      {required this.phoneNumber, required this.settings, this.extra});

  /// [phoneNumber] The phone number of the user, in international format
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json) {
    return SetAuthenticationPhoneNumber(
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

  static const CONSTRUCTOR = 'setAuthenticationPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
