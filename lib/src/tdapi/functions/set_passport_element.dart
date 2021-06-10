part of '../tdapi.dart';

class SetPassportElement extends TdFunction {
  /// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first
  SetPassportElement(
      {required this.element, required this.password, this.extra});

  /// [element] Input Telegram Passport element
  InputPassportElement element;

  /// [password] Password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetPassportElement.fromJson(Map<String, dynamic> json) {
    return SetPassportElement(
      element:
          InputPassportElement.fromJson(json['element'] ?? <String, dynamic>{}),
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "element": this.element.toJson(),
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}
