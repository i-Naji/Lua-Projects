part of '../tdapi.dart';

class GetImportedContactCount extends TdFunction {
  /// Returns the total number of imported contacts
  GetImportedContactCount({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetImportedContactCount.fromJson(Map<String, dynamic> json) {
    return GetImportedContactCount(
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

  static const CONSTRUCTOR = 'getImportedContactCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
