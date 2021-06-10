part of '../tdapi.dart';

class StickerSetInfo extends TdObject {
  /// Represents short information about a sticker set
  StickerSetInfo(
      {required this.id,
      required this.title,
      required this.name,
      this.thumbnail,
      required this.thumbnailOutline,
      required this.isInstalled,
      required this.isArchived,
      required this.isOfficial,
      required this.isAnimated,
      required this.isMasks,
      required this.isViewed,
      required this.size,
      required this.covers});

  /// [id] Identifier of the sticker set
  int id;

  /// [title] Title of the sticker set
  String title;

  /// [name] Name of the sticker set
  String name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null
  Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  bool isOfficial;

  /// [isAnimated] True, is the stickers in the set are animated
  bool isAnimated;

  /// [isMasks] True, if the stickers in the set are masks
  bool isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  bool isViewed;

  /// [size] Total number of stickers in the set
  int size;

  /// [covers] Contains up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full set should be requested
  List<Sticker> covers;

  /// Parse from a json
  factory StickerSetInfo.fromJson(Map<String, dynamic> json) {
    return StickerSetInfo(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      title: json['title'] ?? "",
      name: json['name'] ?? "",
      thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      thumbnailOutline: List<ClosedVectorPath>.from(
          (json['thumbnail_outline'] ?? [])
              .map((item) =>
                  ClosedVectorPath.fromJson(item ?? <String, dynamic>{}))
              .toList()),
      isInstalled: json['is_installed'] ?? false,
      isArchived: json['is_archived'] ?? false,
      isOfficial: json['is_official'] ?? false,
      isAnimated: json['is_animated'] ?? false,
      isMasks: json['is_masks'] ?? false,
      isViewed: json['is_viewed'] ?? false,
      size: json['size'] ?? 0,
      covers: List<Sticker>.from((json['covers'] ?? [])
          .map((item) => Sticker.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "name": this.name,
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "thumbnail_outline":
          this.thumbnailOutline.map((i) => i.toJson()).toList(),
      "is_installed": this.isInstalled,
      "is_archived": this.isArchived,
      "is_official": this.isOfficial,
      "is_animated": this.isAnimated,
      "is_masks": this.isMasks,
      "is_viewed": this.isViewed,
      "size": this.size,
      "covers": this.covers.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
