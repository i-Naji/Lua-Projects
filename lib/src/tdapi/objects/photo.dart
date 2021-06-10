part of '../tdapi.dart';

class Photo extends TdObject {
  /// Describes a photo
  Photo({required this.hasStickers, this.minithumbnail, required this.sizes});

  /// [hasStickers] True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool hasStickers;

  /// [minithumbnail] Photo minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo, in different sizes
  List<PhotoSize> sizes;

  /// Parse from a json
  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      hasStickers: json['has_stickers'] ?? false,
      minithumbnail:
          Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
      sizes: List<PhotoSize>.from((json['sizes'] ?? [])
          .map((item) => PhotoSize.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": this.hasStickers,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "sizes": this.sizes.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'photo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
