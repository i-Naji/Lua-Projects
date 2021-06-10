part of '../tdapi.dart';

class ChangeStickerSet extends TdFunction {
  /// Installs/uninstalls or activates/archives a sticker set
  ChangeStickerSet(
      {required this.setId,
      required this.isInstalled,
      required this.isArchived,
      this.extra});

  /// [setId] Identifier of the sticker set
  int setId;

  /// [isInstalled] The new value of is_installed
  bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be installed and archived simultaneously
  bool isArchived;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ChangeStickerSet.fromJson(Map<String, dynamic> json) {
    return ChangeStickerSet(
      setId: int.tryParse(json['set_id'] ?? "") ?? 0,
      isInstalled: json['is_installed'] ?? false,
      isArchived: json['is_archived'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "is_installed": this.isInstalled,
      "is_archived": this.isArchived,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'changeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
