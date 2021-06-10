part of '../tdapi.dart';

class Video extends TdObject {
  /// Describes a video file
  Video(
      {required this.duration,
      required this.width,
      required this.height,
      required this.fileName,
      required this.mimeType,
      required this.hasStickers,
      required this.supportsStreaming,
      this.minithumbnail,
      this.thumbnail,
      required this.video});

  /// [duration] Duration of the video, in seconds; as defined by the sender
  int duration;

  /// [width] Video width; as defined by the sender
  int width;

  /// [height] Video height; as defined by the sender
  int height;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool hasStickers;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  Thumbnail? thumbnail;

  /// [video] File containing the video
  File video;

  /// Parse from a json
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      duration: json['duration'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      fileName: json['file_name'] ?? "",
      mimeType: json['mime_type'] ?? "",
      hasStickers: json['has_stickers'] ?? false,
      supportsStreaming: json['supports_streaming'] ?? false,
      minithumbnail:
          Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      video: File.fromJson(json['video'] ?? <String, dynamic>{}),
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
      "supports_streaming": this.supportsStreaming,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "video": this.video.toJson(),
    };
  }

  static const CONSTRUCTOR = 'video';

  @override
  String getConstructor() => CONSTRUCTOR;
}
