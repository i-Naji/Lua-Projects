part of '../tdapi.dart';

class CheckAuthenticationPassword extends TdFunction {
  /// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword
  CheckAuthenticationPassword({required this.password, this.extra});

  /// [password] The password to check
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckAuthenticationPassword.fromJson(Map<String, dynamic> json) {
    return CheckAuthenticationPassword(
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}
