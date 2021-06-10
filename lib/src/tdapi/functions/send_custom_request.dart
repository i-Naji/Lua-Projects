part of '../tdapi.dart';

class SendCustomRequest extends TdFunction {
  /// Sends a custom request; for bots only
  SendCustomRequest(
      {required this.method, required this.parameters, this.extra});

  /// [method] The method name
  String method;

  /// [parameters] JSON-serialized method parameters
  String parameters;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendCustomRequest.fromJson(Map<String, dynamic> json) {
    return SendCustomRequest(
      method: json['method'] ?? "",
      parameters: json['parameters'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "method": this.method,
      "parameters": this.parameters,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCustomRequest';

  @override
  String getConstructor() => CONSTRUCTOR;
}
