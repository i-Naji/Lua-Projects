part of '../tdapi.dart';

class RegisterUser extends TdFunction {
  /// Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration
  RegisterUser({required this.firstName, required this.lastName, this.extra});

  /// [firstName] The first name of the user; 1-64 characters
  String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  String lastName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RegisterUser.fromJson(Map<String, dynamic> json) {
    return RegisterUser(
      firstName: json['first_name'] ?? "",
      lastName: json['last_name'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'registerUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
