part of '../tdapi.dart';

class InputThumbnail extends TdObject {
  /// A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size
  InputThumbnail(
      {required this.thumbnail, required this.width, required this.height});

  /// [thumbnail] Thumbnail file to send. Sending thumbnails by file_id is currently not supported
  InputFile thumbnail;

  /// [width] Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown
  int width;

  /// [height] Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown
  int height;

  /// Parse from a json
  factory InputThumbnail.fromJson(Map<String, dynamic> json) {
    return InputThumbnail(
      thumbnail: InputFile.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "thumbnail": this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height,
    };
  }

  static const CONSTRUCTOR = 'inputThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
