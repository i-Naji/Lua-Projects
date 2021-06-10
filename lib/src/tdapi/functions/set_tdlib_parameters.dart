part of '../tdapi.dart';

class SetTdlibParameters extends TdFunction {
  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
  SetTdlibParameters({required this.parameters, this.extra});

  /// [parameters] Parameters
  TdlibParameters parameters;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetTdlibParameters.fromJson(Map<String, dynamic> json) {
    return SetTdlibParameters(
      parameters:
          TdlibParameters.fromJson(json['parameters'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "parameters": this.parameters.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setTdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
