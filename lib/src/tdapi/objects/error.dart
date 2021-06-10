part of '../tdapi.dart';

class TdError extends TdObject {
  /// An object of this type can be returned on every function call, in case of an error
  TdError({required this.code, required this.message, this.extra});

  /// [code] Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user
  int code;

  /// [message] Error message; subject to future changes
  String message;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TdError.fromJson(Map<String, dynamic> json) {
    return TdError(
      code: json['code'] ?? 0,
      message: json['message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "message": this.message,
    };
  }

  static const CONSTRUCTOR = 'error';

  @override
  String getConstructor() => CONSTRUCTOR;
}
