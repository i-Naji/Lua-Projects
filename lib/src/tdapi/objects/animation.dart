part of '../tdapi.dart';

class Animation extends TdObject {
  /// Describes an animation file. The animation must be encoded in GIF or MPEG4 format
  Animation(
      {required this.duration,
      required this.width,
      required this.height,
      required this.fileName,
      required this.mimeType,
      required this.hasStickers,
      this.minithumbnail,
      this.thumbnail,
      required this.animation});

  /// [duration] Duration of the animation, in seconds; as defined by the sender
  int duration;

  /// [width] Width of the animation
  int width;

  /// [height] Height of the animation
  int height;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  String mimeType;

  /// [hasStickers] True, if stickers were added to the animation. The list of corresponding sticker set can be received using getAttachedStickerSets
  bool hasStickers;

  /// [minithumbnail] Animation minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null
  Thumbnail? thumbnail;

  /// [animation] File containing the animation
  File animation;

  /// Parse from a json
  factory Animation.fromJson(Map<String, dynamic> json) {
    return Animation(
      duration: json['duration'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      fileName: json['file_name'] ?? "",
      mimeType: json['mime_type'] ?? "",
      hasStickers: json['has_stickers'] ?? false,
      minithumbnail:
          Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      animation: File.fromJson(json['animation'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "has_stickers": this.hasStickers,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "animation": this.animation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'animation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
