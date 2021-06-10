part of '../tdapi.dart';

class GetSupportUser extends TdFunction {
  /// Returns a user that can be contacted to get support
  GetSupportUser({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSupportUser.fromJson(Map<String, dynamic> json) {
    return GetSupportUser(
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

  static const CONSTRUCTOR = 'getSupportUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
