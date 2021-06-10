part of '../tdapi.dart';

class DeleteSavedCredentials extends TdFunction {
  /// Deletes saved credentials for all payment provider bots
  DeleteSavedCredentials({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteSavedCredentials.fromJson(Map<String, dynamic> json) {
    return DeleteSavedCredentials(
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

  static const CONSTRUCTOR = 'deleteSavedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}
