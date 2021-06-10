part of '../tdapi.dart';

class VideoNote extends TdObject {
  /// Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format
  VideoNote(
      {required this.duration,
      required this.length,
      this.minithumbnail,
      this.thumbnail,
      required this.video});

  /// [duration] Duration of the video, in seconds; as defined by the sender
  int duration;

  /// [length] Video width and height; as defined by the sender
  int length;

  /// [minithumbnail] Video minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may be null
  Thumbnail? thumbnail;

  /// [video] File containing the video
  File video;

  /// Parse from a json
  factory VideoNote.fromJson(Map<String, dynamic> json) {
    return VideoNote(
      duration: json['duration'] ?? 0,
      length: json['length'] ?? 0,
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
      "length": this.length,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "video": this.video.toJson(),
    };
  }

  static const CONSTRUCTOR = 'videoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
