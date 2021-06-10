part of '../tdapi.dart';

class DisableProxy extends TdFunction {
  /// Disables the currently enabled proxy. Can be called before authorization
  DisableProxy({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DisableProxy.fromJson(Map<String, dynamic> json) {
    return DisableProxy(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'disableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
