part of '../tdapi.dart';

class GetJsonString extends TdFunction {
  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously
  GetJsonString({required this.jsonValue, this.extra});

  /// [jsonValue] The JsonValue object
  JsonValue jsonValue;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetJsonString.fromJson(Map<String, dynamic> json) {
    return GetJsonString(
      jsonValue: JsonValue.fromJson(json['json_value'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json_value": this.jsonValue.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
