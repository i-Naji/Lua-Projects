part of '../tdapi.dart';

class UserPrivacySettingRules extends TdObject {
  /// A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed
  UserPrivacySettingRules({required this.rules, this.extra});

  /// [rules] A list of rules
  List<UserPrivacySettingRule> rules;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory UserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    return UserPrivacySettingRules(
      rules: List<UserPrivacySettingRule>.from((json['rules'] ?? [])
          .map((item) =>
              UserPrivacySettingRule.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rules": this.rules.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingRules';

  @override
  String getConstructor() => CONSTRUCTOR;
}
