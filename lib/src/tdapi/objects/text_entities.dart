part of '../tdapi.dart';

class TextEntities extends TdObject {
  /// Contains a list of text entities
  TextEntities({required this.entities, this.extra});

  /// [entities] List of text entities
  List<TextEntity> entities;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TextEntities.fromJson(Map<String, dynamic> json) {
    return TextEntities(
      entities: List<TextEntity>.from((json['entities'] ?? [])
          .map((item) => TextEntity.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "entities": this.entities.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'textEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
