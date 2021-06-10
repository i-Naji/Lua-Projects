part of '../tdapi.dart';

class GetStorageStatisticsFast extends TdFunction {
  /// Quickly returns approximate storage usage statistics. Can be called before authorization
  GetStorageStatisticsFast({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    return GetStorageStatisticsFast(
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

  static const CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
