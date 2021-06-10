part of '../tdapi.dart';

class GetCountryCode extends TdFunction {
  /// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
  GetCountryCode({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetCountryCode.fromJson(Map<String, dynamic> json) {
    return GetCountryCode(
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

  static const CONSTRUCTOR = 'getCountryCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
