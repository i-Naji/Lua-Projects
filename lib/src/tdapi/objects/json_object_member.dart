part of '../tdapi.dart';

class JsonObjectMember extends TdObject {
  /// Represents one member of a JSON object
  JsonObjectMember({required this.key, required this.value});

  /// [key] Member's key
  String key;

  /// [value] Member's value
  JsonValue value;

  /// Parse from a json
  factory JsonObjectMember.fromJson(Map<String, dynamic> json) {
    return JsonObjectMember(
      key: json['key'] ?? "",
      value: JsonValue.fromJson(json['value'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'jsonObjectMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
