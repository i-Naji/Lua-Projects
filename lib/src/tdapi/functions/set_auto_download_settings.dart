part of '../tdapi.dart';

class SetAutoDownloadSettings extends TdFunction {
  /// Sets auto-download settings
  SetAutoDownloadSettings(
      {required this.settings, required this.type, this.extra});

  /// [settings] New user auto-download settings
  AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are applied
  NetworkType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetAutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    return SetAutoDownloadSettings(
      settings: AutoDownloadSettings.fromJson(
          json['settings'] ?? <String, dynamic>{}),
      type: NetworkType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "settings": this.settings.toJson(),
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAutoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
