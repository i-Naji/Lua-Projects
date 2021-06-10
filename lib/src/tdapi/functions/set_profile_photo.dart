part of '../tdapi.dart';

class SetProfilePhoto extends TdFunction {
  /// Changes a profile photo for the current user
  SetProfilePhoto({required this.photo, this.extra});

  /// [photo] Profile photo to set
  InputChatPhoto photo;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetProfilePhoto.fromJson(Map<String, dynamic> json) {
    return SetProfilePhoto(
      photo: InputChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
