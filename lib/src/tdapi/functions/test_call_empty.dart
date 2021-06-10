part of '../tdapi.dart';

class TestCallEmpty extends TdFunction {
  /// Does nothing; for testing only. This is an offline method. Can be called before authorization
  TestCallEmpty({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestCallEmpty.fromJson(Map<String, dynamic> json) {
    return TestCallEmpty(
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

  static const CONSTRUCTOR = 'testCallEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}
