part of '../tdapi.dart';

class ChatPhotoInfo extends TdObject {
  /// Contains basic information about the photo of a chat
  ChatPhotoInfo(
      {required this.small, required this.big, required this.hasAnimation});

  /// [small] A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  File small;

  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  File big;

  /// [hasAnimation] True, if the photo has animated variant
  bool hasAnimation;

  /// Parse from a json
  factory ChatPhotoInfo.fromJson(Map<String, dynamic> json) {
    return ChatPhotoInfo(
      small: File.fromJson(json['small'] ?? <String, dynamic>{}),
      big: File.fromJson(json['big'] ?? <String, dynamic>{}),
      hasAnimation: json['has_animation'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "small": this.small.toJson(),
      "big": this.big.toJson(),
      "has_animation": this.hasAnimation,
    };
  }

  static const CONSTRUCTOR = 'chatPhotoInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
