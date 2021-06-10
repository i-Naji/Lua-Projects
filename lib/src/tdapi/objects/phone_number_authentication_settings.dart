part of '../tdapi.dart';

class PhoneNumberAuthenticationSettings extends TdObject {
  /// Contains settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings(
      {required this.allowFlashCall,
      required this.isCurrentPhoneNumber,
      required this.allowSmsRetrieverApi});

  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number
  bool allowFlashCall;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used on the current device
  bool isCurrentPhoneNumber;

  /// [allowSmsRetrieverApi] For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services
  bool allowSmsRetrieverApi;

  /// Parse from a json
  factory PhoneNumberAuthenticationSettings.fromJson(
      Map<String, dynamic> json) {
    return PhoneNumberAuthenticationSettings(
      allowFlashCall: json['allow_flash_call'] ?? false,
      isCurrentPhoneNumber: json['is_current_phone_number'] ?? false,
      allowSmsRetrieverApi: json['allow_sms_retriever_api'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "allow_flash_call": this.allowFlashCall,
      "is_current_phone_number": this.isCurrentPhoneNumber,
      "allow_sms_retriever_api": this.allowSmsRetrieverApi,
    };
  }

  static const CONSTRUCTOR = 'phoneNumberAuthenticationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
