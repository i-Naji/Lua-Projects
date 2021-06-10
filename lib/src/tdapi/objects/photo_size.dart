part of '../tdapi.dart';

class PhotoSize extends TdObject {
  /// Describes an image in JPEG format
  PhotoSize(
      {required this.type,
      required this.photo,
      required this.width,
      required this.height,
      required this.progressiveSizes});

  /// [type] Image type (see https://core.telegram.org/constructor/photoSize)
  String type;

  /// [photo] Information about the image file
  File photo;

  /// [width] Image width
  int width;

  /// [height] Image height
  int height;

  /// [progressiveSizes] Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image
  List<int> progressiveSizes;

  /// Parse from a json
  factory PhotoSize.fromJson(Map<String, dynamic> json) {
    return PhotoSize(
      type: json['type'] ?? "",
      photo: File.fromJson(json['photo'] ?? <String, dynamic>{}),
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      progressiveSizes: List<int>.from(
          (json['progressive_sizes'] ?? []).map((item) => item ?? 0).toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "photo": this.photo.toJson(),
      "width": this.width,
      "height": this.height,
      "progressive_sizes": this.progressiveSizes.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'photoSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}
