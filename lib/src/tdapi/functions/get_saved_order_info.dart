part of '../tdapi.dart';

class GetSavedOrderInfo extends TdFunction {
  /// Returns saved order info, if any
  GetSavedOrderInfo({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSavedOrderInfo.fromJson(Map<String, dynamic> json) {
    return GetSavedOrderInfo(
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

  static const CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
