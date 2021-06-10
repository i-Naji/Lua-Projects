part of '../tdapi.dart';

class GetProxies extends TdFunction {
  /// Returns list of proxies that are currently set up. Can be called before authorization
  GetProxies({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetProxies.fromJson(Map<String, dynamic> json) {
    return GetProxies(
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

  static const CONSTRUCTOR = 'getProxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
