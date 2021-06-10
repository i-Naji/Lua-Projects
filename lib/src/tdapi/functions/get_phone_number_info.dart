part of '../tdapi.dart';

class GetPhoneNumberInfo extends TdFunction {
  /// Returns information about a phone number by its prefix. Can be called before authorization
  GetPhoneNumberInfo({required this.phoneNumberPrefix, this.extra});

  /// [phoneNumberPrefix] The phone number prefix
  String phoneNumberPrefix;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPhoneNumberInfo.fromJson(Map<String, dynamic> json) {
    return GetPhoneNumberInfo(
      phoneNumberPrefix: json['phone_number_prefix'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number_prefix": this.phoneNumberPrefix,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPhoneNumberInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
