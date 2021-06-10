part of '../tdapi.dart';

class GetMapThumbnailFile extends TdFunction {
  /// Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded
  GetMapThumbnailFile(
      {required this.location,
      required this.zoom,
      required this.width,
      required this.height,
      required this.scale,
      required this.chatId,
      this.extra});

  /// [location] Location of the map center
  Location location;

  /// [zoom] Map zoom level; 13-20
  int zoom;

  /// [width] Map width in pixels before applying scale; 16-1024
  int width;

  /// [height] Map height in pixels before applying scale; 16-1024
  int height;

  /// [scale] Map scale; 1-3
  int scale;

  /// [chatId] Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMapThumbnailFile.fromJson(Map<String, dynamic> json) {
    return GetMapThumbnailFile(
      location: Location.fromJson(json['location'] ?? <String, dynamic>{}),
      zoom: json['zoom'] ?? 0,
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
      scale: json['scale'] ?? 0,
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "zoom": this.zoom,
      "width": this.width,
      "height": this.height,
      "scale": this.scale,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMapThumbnailFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
