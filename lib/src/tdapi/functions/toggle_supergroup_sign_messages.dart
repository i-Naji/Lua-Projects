part of '../tdapi.dart';

class ToggleSupergroupSignMessages extends TdFunction {
  /// Toggles sender signatures messages sent in a channel; requires can_change_info rights
  ToggleSupergroupSignMessages(
      {required this.supergroupId, required this.signMessages, this.extra});

  /// [supergroupId] Identifier of the channel
  int supergroupId;

  /// [signMessages] New value of sign_messages
  bool signMessages;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ToggleSupergroupSignMessages.fromJson(Map<String, dynamic> json) {
    return ToggleSupergroupSignMessages(
      supergroupId: json['supergroup_id'] ?? 0,
      signMessages: json['sign_messages'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "sign_messages": this.signMessages,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleSupergroupSignMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
