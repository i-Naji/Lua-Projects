part of '../tdapi.dart';

class AnimatedChatPhoto extends TdObject {
  /// Animated variant of a chat photo in MPEG4 format
  AnimatedChatPhoto(
      {required this.length,
      required this.file,
      required this.mainFrameTimestamp});

  /// [length] Animation width and height
  int length;

  /// [file] Information about the animation file
  File file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  double mainFrameTimestamp;

  /// Parse from a json
  factory AnimatedChatPhoto.fromJson(Map<String, dynamic> json) {
    return AnimatedChatPhoto(
      length: json['length'] ?? 0,
      file: File.fromJson(json['file'] ?? <String, dynamic>{}),
      mainFrameTimestamp: json['main_frame_timestamp'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
      "file": this.file.toJson(),
      "main_frame_timestamp": this.mainFrameTimestamp,
    };
  }

  static const CONSTRUCTOR = 'animatedChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
