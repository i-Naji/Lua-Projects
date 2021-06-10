part of '../tdapi.dart';

class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  /// Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form
  GetPassportAuthorizationFormAvailableElements(
      {required this.autorizationFormId, required this.password, this.extra});

  /// [autorizationFormId] Authorization form identifier
  int autorizationFormId;

  /// [password] Password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPassportAuthorizationFormAvailableElements.fromJson(
      Map<String, dynamic> json) {
    return GetPassportAuthorizationFormAvailableElements(
      autorizationFormId: json['autorization_form_id'] ?? 0,
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": this.autorizationFormId,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportAuthorizationFormAvailableElements';

  @override
  String getConstructor() => CONSTRUCTOR;
}
