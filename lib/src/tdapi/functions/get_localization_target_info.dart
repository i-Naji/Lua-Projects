part of '../tdapi.dart';

class GetLocalizationTargetInfo extends TdFunction {
  /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
  GetLocalizationTargetInfo({required this.onlyLocal, this.extra});

  /// [onlyLocal] If true, returns only locally available information without sending network requests
  bool onlyLocal;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    return GetLocalizationTargetInfo(
      onlyLocal: json['only_local'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "only_local": this.onlyLocal,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
