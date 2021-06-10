part of '../tdapi.dart';

class Ok extends TdObject {
  /// An object of this type is returned on a successful function call for certain functions
  Ok({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Ok.fromJson(Map<String, dynamic> json) {
    return Ok(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'ok';

  @override
  String getConstructor() => CONSTRUCTOR;
}
