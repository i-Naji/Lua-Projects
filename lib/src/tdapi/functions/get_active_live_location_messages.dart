part of '../tdapi.dart';

class GetActiveLiveLocationMessages extends TdFunction {
  /// Returns all active live locations that should be updated by the application. The list is persistent across application restarts only if the message database is used
  GetActiveLiveLocationMessages({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json) {
    return GetActiveLiveLocationMessages(
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

  static const CONSTRUCTOR = 'getActiveLiveLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
