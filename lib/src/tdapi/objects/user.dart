part of '../tdapi.dart';

class User extends TdObject {
  /// Represents a user
  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.phoneNumber,
      required this.status,
      this.profilePhoto,
      required this.isContact,
      required this.isMutualContact,
      required this.isVerified,
      required this.isSupport,
      required this.restrictionReason,
      required this.isScam,
      required this.haveAccess,
      required this.type,
      required this.languageCode,
      this.extra});

  /// [id] User identifier
  int id;

  /// [firstName] First name of the user
  String firstName;

  /// [lastName] Last name of the user
  String lastName;

  /// [username] Username of the user
  String username;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [status] Current online status of the user
  UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  ProfilePhoto? profilePhoto;

  /// [isContact] The user is a contact of the current user
  bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the current user is a contact of the user
  bool isMutualContact;

  /// [isVerified] True, if the user is verified
  bool isVerified;

  /// [isSupport] True, if the user is Telegram support account
  bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  bool isScam;

  /// [haveAccess] If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
  bool haveAccess;

  /// [type] Type of the user
  UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to bots
  String languageCode;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      firstName: json['first_name'] ?? "",
      lastName: json['last_name'] ?? "",
      username: json['username'] ?? "",
      phoneNumber: json['phone_number'] ?? "",
      status: UserStatus.fromJson(json['status'] ?? <String, dynamic>{}),
      profilePhoto:
          ProfilePhoto.fromJson(json['profile_photo'] ?? <String, dynamic>{}),
      isContact: json['is_contact'] ?? false,
      isMutualContact: json['is_mutual_contact'] ?? false,
      isVerified: json['is_verified'] ?? false,
      isSupport: json['is_support'] ?? false,
      restrictionReason: json['restriction_reason'] ?? "",
      isScam: json['is_scam'] ?? false,
      haveAccess: json['have_access'] ?? false,
      type: UserType.fromJson(json['type'] ?? <String, dynamic>{}),
      languageCode: json['language_code'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "username": this.username,
      "phone_number": this.phoneNumber,
      "status": this.status.toJson(),
      "profile_photo":
          this.profilePhoto == null ? null : this.profilePhoto!.toJson(),
      "is_contact": this.isContact,
      "is_mutual_contact": this.isMutualContact,
      "is_verified": this.isVerified,
      "is_support": this.isSupport,
      "restriction_reason": this.restrictionReason,
      "is_scam": this.isScam,
      "have_access": this.haveAccess,
      "type": this.type.toJson(),
      "language_code": this.languageCode,
    };
  }

  static const CONSTRUCTOR = 'user';

  @override
  String getConstructor() => CONSTRUCTOR;
}
