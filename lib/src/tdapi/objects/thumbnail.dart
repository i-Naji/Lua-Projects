part of '../tdapi.dart';

class Thumbnail extends TdObject {
  /// Represents a thumbnail
  Thumbnail(
      {required this.format,
      required this.width,
      required this.height,
      required this.file});

  /// [format] Thumbnail format
  ThumbnailFormat format;

  /// [width] Thumbnail width
  int width;

  /// [height] Thumbnail height
  int height;

  /// [file] The thumbnail
  File file;

  /// Parse from a json
  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      format: ThumbnailFormat.fromJson(json['format'] ?? <String, dynamic>{}),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      file: File.fromJson(json['file'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "format": this.format.toJson(),
      "width": this.width,
      "height": this.height,
      "file": this.file.toJson(),
    };
  }

  static const CONSTRUCTOR = 'thumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
