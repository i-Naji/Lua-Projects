part of '../tdapi.dart';

class TestNetwork extends TdFunction {
  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
  TestNetwork({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestNetwork.fromJson(Map<String, dynamic> json) {
    return TestNetwork(
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

  static const CONSTRUCTOR = 'testNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}
