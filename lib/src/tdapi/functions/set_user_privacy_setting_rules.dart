part of '../tdapi.dart';

class SetUserPrivacySettingRules extends TdFunction {
  /// Changes user privacy settings
  SetUserPrivacySettingRules(
      {required this.setting, required this.rules, this.extra});

  /// [setting] The privacy setting
  UserPrivacySetting setting;

  /// [rules] The new privacy rules
  UserPrivacySettingRules rules;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    return SetUserPrivacySettingRules(
      setting:
          UserPrivacySetting.fromJson(json['setting'] ?? <String, dynamic>{}),
      rules: UserPrivacySettingRules.fromJson(
          json['rules'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting.toJson(),
      "rules": this.rules.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setUserPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
