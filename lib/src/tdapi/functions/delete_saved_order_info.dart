part of '../tdapi.dart';

class DeleteSavedOrderInfo extends TdFunction {
  /// Deletes saved order info
  DeleteSavedOrderInfo({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json) {
    return DeleteSavedOrderInfo(
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

  static const CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
