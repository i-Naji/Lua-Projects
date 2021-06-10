part of '../tdapi.dart';

class CountryInfo extends TdObject {
  /// Contains information about a country
  CountryInfo(
      {required this.countryCode,
      required this.name,
      required this.englishName,
      required this.isHidden,
      required this.callingCodes});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  String countryCode;

  /// [name] Native name of the country
  String name;

  /// [englishName] English name of the country
  String englishName;

  /// [isHidden] True, if the country should be hidden from the list of all countries
  bool isHidden;

  /// [callingCodes] List of country calling codes
  List<String> callingCodes;

  /// Parse from a json
  factory CountryInfo.fromJson(Map<String, dynamic> json) {
    return CountryInfo(
      countryCode: json['country_code'] ?? "",
      name: json['name'] ?? "",
      englishName: json['english_name'] ?? "",
      isHidden: json['is_hidden'] ?? false,
      callingCodes: List<String>.from(
          (json['calling_codes'] ?? []).map((item) => item ?? "").toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "name": this.name,
      "english_name": this.englishName,
      "is_hidden": this.isHidden,
      "calling_codes": this.callingCodes.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'countryInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
