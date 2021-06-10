part of '../tdapi.dart';

class GetUserPrivacySettingRules extends TdFunction {
  /// Returns the current privacy settings
  GetUserPrivacySettingRules({required this.setting, this.extra});

  /// [setting] The privacy setting
  UserPrivacySetting setting;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    return GetUserPrivacySettingRules(
      setting:
          UserPrivacySetting.fromJson(json['setting'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
