part of '../tdapi.dart';

class GetPreferredCountryLanguage extends TdFunction {
  /// Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
  GetPreferredCountryLanguage({required this.countryCode, this.extra});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  String countryCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json) {
    return GetPreferredCountryLanguage(
      countryCode: json['country_code'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPreferredCountryLanguage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
