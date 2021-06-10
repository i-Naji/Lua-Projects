part of '../tdapi.dart';

class DeleteProfilePhoto extends TdFunction {
  /// Deletes a profile photo
  DeleteProfilePhoto({required this.profilePhotoId, this.extra});

  /// [profilePhotoId] Identifier of the profile photo to delete
  int profilePhotoId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteProfilePhoto.fromJson(Map<String, dynamic> json) {
    return DeleteProfilePhoto(
      profilePhotoId: int.tryParse(json['profile_photo_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "profile_photo_id": this.profilePhotoId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
