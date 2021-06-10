part of '../tdapi.dart';

class ChatPhoto extends TdObject {
  /// Describes a chat or user profile photo
  ChatPhoto(
      {required this.id,
      required this.addedDate,
      this.minithumbnail,
      required this.sizes,
      this.animation});

  /// [id] Unique photo identifier
  int id;

  /// [addedDate] Point in time (Unix timestamp) when the photo has been added
  int addedDate;

  /// [minithumbnail] Photo minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo in JPEG format, in different size
  List<PhotoSize> sizes;

  /// [animation] Animated variant of the photo in MPEG4 format; may be null
  AnimatedChatPhoto? animation;

  /// Parse from a json
  factory ChatPhoto.fromJson(Map<String, dynamic> json) {
    return ChatPhoto(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      addedDate: json['added_date'] ?? 0,
      minithumbnail:
          Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
      sizes: List<PhotoSize>.from((json['sizes'] ?? [])
          .map((item) => PhotoSize.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      animation:
          AnimatedChatPhoto.fromJson(json['animation'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "added_date": this.addedDate,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "sizes": this.sizes.map((i) => i.toJson()).toList(),
      "animation": this.animation == null ? null : this.animation!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
