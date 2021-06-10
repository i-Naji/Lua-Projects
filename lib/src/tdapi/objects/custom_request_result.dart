part of '../tdapi.dart';

class CustomRequestResult extends TdObject {
  /// Contains the result of a custom request
  CustomRequestResult({required this.result, this.extra});

  /// [result] A JSON-serialized result
  String result;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CustomRequestResult.fromJson(Map<String, dynamic> json) {
    return CustomRequestResult(
      result: json['result'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "result": this.result,
    };
  }

  static const CONSTRUCTOR = 'customRequestResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}
