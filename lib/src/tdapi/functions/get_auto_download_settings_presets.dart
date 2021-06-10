part of '../tdapi.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {
  /// Returns auto-download settings presets for the current user
  GetAutoDownloadSettingsPresets({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) {
    return GetAutoDownloadSettingsPresets(
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

  static const CONSTRUCTOR = 'getAutoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
