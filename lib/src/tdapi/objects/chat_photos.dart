part of '../tdapi.dart';

class ChatPhotos extends TdObject {
  /// Contains a list of chat or user profile photos
  ChatPhotos({required this.totalCount, required this.photos, this.extra});

  /// [totalCount] Total number of photos
  int totalCount;

  /// [photos] List of photos
  List<ChatPhoto> photos;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatPhotos.fromJson(Map<String, dynamic> json) {
    return ChatPhotos(
      totalCount: json['total_count'] ?? 0,
      photos: List<ChatPhoto>.from((json['photos'] ?? [])
          .map((item) => ChatPhoto.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "photos": this.photos.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatPhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
