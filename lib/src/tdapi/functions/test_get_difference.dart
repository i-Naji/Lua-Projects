part of '../tdapi.dart';

class TestGetDifference extends TdFunction {
  /// Forces an updates.getDifference call to the Telegram servers; for testing only
  TestGetDifference({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestGetDifference.fromJson(Map<String, dynamic> json) {
    return TestGetDifference(
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

  static const CONSTRUCTOR = 'testGetDifference';

  @override
  String getConstructor() => CONSTRUCTOR;
}
