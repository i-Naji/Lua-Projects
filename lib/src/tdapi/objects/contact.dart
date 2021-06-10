part of '../tdapi.dart';

class Contact extends TdObject {
  /// Describes a user contact
  Contact(
      {required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.vcard,
      required this.userId});

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [firstName] First name of the user; 1-255 characters in length
  String firstName;

  /// [lastName] Last name of the user
  String lastName;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in length
  String vcard;

  /// [userId] Identifier of the user, if known; otherwise 0
  int userId;

  /// Parse from a json
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      phoneNumber: json['phone_number'] ?? "",
      firstName: json['first_name'] ?? "",
      lastName: json['last_name'] ?? "",
      vcard: json['vcard'] ?? "",
      userId: json['user_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "vcard": this.vcard,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'contact';

  @override
  String getConstructor() => CONSTRUCTOR;
}
