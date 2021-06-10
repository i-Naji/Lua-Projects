part of '../tdapi.dart';

class SetName extends TdFunction {
  /// Changes the first and last name of the current user
  SetName({required this.firstName, required this.lastName, this.extra});

  /// [firstName] The new value of the first name for the user; 1-64 characters
  String firstName;

  /// [lastName] The new value of the optional last name for the user; 0-64 characters
  String lastName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetName.fromJson(Map<String, dynamic> json) {
    return SetName(
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

  static const CONSTRUCTOR = 'setName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
