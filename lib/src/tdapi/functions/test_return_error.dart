part of '../tdapi.dart';

class TestReturnError extends TdFunction {
  /// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously
  TestReturnError({required this.error, this.extra});

  /// [error] The error to be returned
  TdError error;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestReturnError.fromJson(Map<String, dynamic> json) {
    return TestReturnError(
      error: TdError.fromJson(json['error'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error": this.error.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testReturnError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
