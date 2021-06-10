part of '../tdapi.dart';

class GetLogTags extends TdFunction {
  /// Returns list of available TDLib internal log tags, for example,
  GetLogTags({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLogTags.fromJson(Map<String, dynamic> json) {
    return GetLogTags(
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

  static const CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
