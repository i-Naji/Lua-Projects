part of '../tdapi.dart';

class GetMe extends TdFunction {
  /// Returns the current user
  GetMe({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMe.fromJson(Map<String, dynamic> json) {
    return GetMe(
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

  static const CONSTRUCTOR = 'getMe';

  @override
  String getConstructor() => CONSTRUCTOR;
}
