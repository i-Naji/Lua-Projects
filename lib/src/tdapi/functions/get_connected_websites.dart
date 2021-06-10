part of '../tdapi.dart';

class GetConnectedWebsites extends TdFunction {
  /// Returns all website where the current user used Telegram to log in
  GetConnectedWebsites({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetConnectedWebsites.fromJson(Map<String, dynamic> json) {
    return GetConnectedWebsites(
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

  static const CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
