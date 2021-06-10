part of '../tdapi.dart';

class Background extends TdObject {
  /// Describes a chat background
  Background(
      {required this.id,
      required this.isDefault,
      required this.isDark,
      required this.name,
      this.document,
      required this.type,
      this.extra});

  /// [id] Unique background identifier
  int id;

  /// [isDefault] True, if this is one of default backgrounds
  bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used with dark theme
  bool isDark;

  /// [name] Unique background name
  String name;

  /// [document] Document with the background; may be null. Null only for filled backgrounds
  Document? document;

  /// [type] Type of the background
  BackgroundType type;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Background.fromJson(Map<String, dynamic> json) {
    return Background(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      isDefault: json['is_default'] ?? false,
      isDark: json['is_dark'] ?? false,
      name: json['name'] ?? "",
      document: Document.fromJson(json['document'] ?? <String, dynamic>{}),
      type: BackgroundType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_default": this.isDefault,
      "is_dark": this.isDark,
      "name": this.name,
      "document": this.document == null ? null : this.document!.toJson(),
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'background';

  @override
  String getConstructor() => CONSTRUCTOR;
}
