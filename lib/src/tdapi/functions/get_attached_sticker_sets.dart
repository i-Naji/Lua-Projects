part of '../tdapi.dart';

class GetAttachedStickerSets extends TdFunction {
  /// Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets
  GetAttachedStickerSets({required this.fileId, this.extra});

  /// [fileId] File identifier
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetAttachedStickerSets.fromJson(Map<String, dynamic> json) {
    return GetAttachedStickerSets(
      fileId: json['file_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAttachedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
