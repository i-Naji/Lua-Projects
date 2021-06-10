part of '../tdapi.dart';

class Countries extends TdObject {
  /// Contains information about countries
  Countries({required this.countries, this.extra});

  /// [countries] The list of countries
  List<CountryInfo> countries;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Countries.fromJson(Map<String, dynamic> json) {
    return Countries(
      countries: List<CountryInfo>.from((json['countries'] ?? [])
          .map((item) => CountryInfo.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "countries": this.countries.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'countries';

  @override
  String getConstructor() => CONSTRUCTOR;
}
