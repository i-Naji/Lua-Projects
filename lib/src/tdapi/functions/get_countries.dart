part of '../tdapi.dart';

class GetCountries extends TdFunction {
  /// Returns information about existing countries. Can be called before authorization
  GetCountries({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetCountries.fromJson(Map<String, dynamic> json) {
    return GetCountries(
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

  static const CONSTRUCTOR = 'getCountries';

  @override
  String getConstructor() => CONSTRUCTOR;
}
