part of '../tdapi.dart';

class GetApplicationConfig extends TdFunction {
  /// Returns application config, provided by the server. Can be called before authorization
  GetApplicationConfig({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetApplicationConfig.fromJson(Map<String, dynamic> json) {
    return GetApplicationConfig(
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

  static const CONSTRUCTOR = 'getApplicationConfig';

  @override
  String getConstructor() => CONSTRUCTOR;
}
