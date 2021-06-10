part of '../tdapi.dart';

class AutoDownloadSettingsPresets extends TdObject {
  /// Contains auto-download settings presets for the user
  AutoDownloadSettingsPresets(
      {required this.low,
      required this.medium,
      required this.high,
      this.extra});

  /// [low] Preset with lowest settings; supposed to be used by default when roaming
  AutoDownloadSettings low;

  /// [medium] Preset with medium settings; supposed to be used by default when using mobile data
  AutoDownloadSettings medium;

  /// [high] Preset with highest settings; supposed to be used by default when connected on Wi-Fi
  AutoDownloadSettings high;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) {
    return AutoDownloadSettingsPresets(
      low: AutoDownloadSettings.fromJson(json['low'] ?? <String, dynamic>{}),
      medium:
          AutoDownloadSettings.fromJson(json['medium'] ?? <String, dynamic>{}),
      high: AutoDownloadSettings.fromJson(json['high'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "low": this.low.toJson(),
      "medium": this.medium.toJson(),
      "high": this.high.toJson(),
    };
  }

  static const CONSTRUCTOR = 'autoDownloadSettingsPresets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
