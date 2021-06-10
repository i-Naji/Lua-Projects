part of '../tdapi.dart';

class GetContacts extends TdFunction {
  /// Returns all user contacts
  GetContacts({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetContacts.fromJson(Map<String, dynamic> json) {
    return GetContacts(
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

  static const CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
