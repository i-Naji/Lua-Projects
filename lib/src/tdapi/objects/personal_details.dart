part of '../tdapi.dart';

class PersonalDetails extends TdObject {
  /// Contains the user's personal details
  PersonalDetails(
      {required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.nativeFirstName,
      required this.nativeMiddleName,
      required this.nativeLastName,
      required this.birthdate,
      required this.gender,
      required this.countryCode,
      required this.residenceCountryCode});

  /// [firstName] First name of the user written in English; 1-255 characters
  String firstName;

  /// [middleName] Middle name of the user written in English; 0-255 characters
  String middleName;

  /// [lastName] Last name of the user written in English; 1-255 characters
  String lastName;

  /// [nativeFirstName] Native first name of the user; 1-255 characters
  String nativeFirstName;

  /// [nativeMiddleName] Native middle name of the user; 0-255 characters
  String nativeMiddleName;

  /// [nativeLastName] Native last name of the user; 1-255 characters
  String nativeLastName;

  /// [birthdate] Birthdate of the user
  Date birthdate;

  /// [gender] Gender of the user, "male" or "female"
  String gender;

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's country
  String countryCode;

  /// [residenceCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  String residenceCountryCode;

  /// Parse from a json
  factory PersonalDetails.fromJson(Map<String, dynamic> json) {
    return PersonalDetails(
      firstName: json['first_name'] ?? "",
      middleName: json['middle_name'] ?? "",
      lastName: json['last_name'] ?? "",
      nativeFirstName: json['native_first_name'] ?? "",
      nativeMiddleName: json['native_middle_name'] ?? "",
      nativeLastName: json['native_last_name'] ?? "",
      birthdate: Date.fromJson(json['birthdate'] ?? <String, dynamic>{}),
      gender: json['gender'] ?? "",
      countryCode: json['country_code'] ?? "",
      residenceCountryCode: json['residence_country_code'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "middle_name": this.middleName,
      "last_name": this.lastName,
      "native_first_name": this.nativeFirstName,
      "native_middle_name": this.nativeMiddleName,
      "native_last_name": this.nativeLastName,
      "birthdate": this.birthdate.toJson(),
      "gender": this.gender,
      "country_code": this.countryCode,
      "residence_country_code": this.residenceCountryCode,
    };
  }

  static const CONSTRUCTOR = 'personalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}
