part of '../tdapi.dart';

class GetPassportElement extends TdFunction {
  /// Returns one of the available Telegram Passport elements
  GetPassportElement({required this.type, required this.password, this.extra});

  /// [type] Telegram Passport element type
  PassportElementType type;

  /// [password] Password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPassportElement.fromJson(Map<String, dynamic> json) {
    return GetPassportElement(
      type: PassportElementType.fromJson(json['type'] ?? <String, dynamic>{}),
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
