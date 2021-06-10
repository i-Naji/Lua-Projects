part of '../tdapi.dart';

class Sticker extends TdObject {
  /// Describes a sticker
  Sticker(
      {required this.setId,
      required this.width,
      required this.height,
      required this.emoji,
      required this.isAnimated,
      required this.isMask,
      this.maskPosition,
      required this.outline,
      this.thumbnail,
      required this.sticker});

  /// [setId] The identifier of the sticker set to which the sticker belongs; 0 if none
  int setId;

  /// [width] Sticker width; as defined by the sender
  int width;

  /// [height] Sticker height; as defined by the sender
  int height;

  /// [emoji] Emoji corresponding to the sticker
  String emoji;

  /// [isAnimated] True, if the sticker is an animated sticker in TGS format
  bool isAnimated;

  /// [isMask] True, if the sticker is a mask
  bool isMask;

  /// [maskPosition] Position where the mask should be placed; may be null
  MaskPosition? maskPosition;

  /// [outline] Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath> outline;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  Thumbnail? thumbnail;

  /// [sticker] File containing the sticker
  File sticker;

  /// Parse from a json
  factory Sticker.fromJson(Map<String, dynamic> json) {
    return Sticker(
      setId: int.tryParse(json['set_id'] ?? "") ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      emoji: json['emoji'] ?? "",
      isAnimated: json['is_animated'] ?? false,
      isMask: json['is_mask'] ?? false,
      maskPosition:
          MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{}),
      outline: List<ClosedVectorPath>.from((json['outline'] ?? [])
          .map((item) => ClosedVectorPath.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      sticker: File.fromJson(json['sticker'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "width": this.width,
      "height": this.height,
      "emoji": this.emoji,
      "is_animated": this.isAnimated,
      "is_mask": this.isMask,
      "mask_position":
          this.maskPosition == null ? null : this.maskPosition!.toJson(),
      "outline": this.outline.map((i) => i.toJson()).toList(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'sticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
