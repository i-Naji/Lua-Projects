part of '../tdapi.dart';

class ProfilePhoto extends TdObject {
  /// Describes a user profile photo
  ProfilePhoto(
      {required this.id,
      required this.small,
      required this.big,
      required this.hasAnimation});

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos
  int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded only before the photo is changed
  File small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
  File big;

  /// [hasAnimation] True, if the photo has animated variant
  bool hasAnimation;

  /// Parse from a json
  factory ProfilePhoto.fromJson(Map<String, dynamic> json) {
    return ProfilePhoto(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      small: File.fromJson(json['small'] ?? <String, dynamic>{}),
      big: File.fromJson(json['big'] ?? <String, dynamic>{}),
      hasAnimation: json['has_animation'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "small": this.small.toJson(),
      "big": this.big.toJson(),
      "has_animation": this.hasAnimation,
    };
  }

  static const CONSTRUCTOR = 'profilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
