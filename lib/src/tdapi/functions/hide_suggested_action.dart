part of '../tdapi.dart';

class HideSuggestedAction extends TdFunction {
  /// Hides a suggested action
  HideSuggestedAction({required this.action, this.extra});

  /// [action] Suggested action to hide
  SuggestedAction action;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory HideSuggestedAction.fromJson(Map<String, dynamic> json) {
    return HideSuggestedAction(
      action: SuggestedAction.fromJson(json['action'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "action": this.action.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'hideSuggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
