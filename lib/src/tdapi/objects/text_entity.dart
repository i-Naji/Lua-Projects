part of '../tdapi.dart';

class TextEntity extends TdObject {
  /// Represents a part of the text that needs to be formatted in some unusual way
  TextEntity({required this.offset, required this.length, required this.type});

  /// [offset] Offset of the entity, in UTF-16 code units
  int offset;

  /// [length] Length of the entity, in UTF-16 code units
  int length;

  /// [type] Type of the entity
  TextEntityType type;

  /// Parse from a json
  factory TextEntity.fromJson(Map<String, dynamic> json) {
    return TextEntity(
      offset: json['offset'] ?? 0,
      length: json['length'] ?? 0,
      type: TextEntityType.fromJson(json['type'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "length": this.length,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'textEntity';

  @override
  String getConstructor() => CONSTRUCTOR;
}
