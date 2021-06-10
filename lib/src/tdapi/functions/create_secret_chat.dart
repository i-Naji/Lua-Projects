part of '../tdapi.dart';

class CreateSecretChat extends TdFunction {
  /// Returns an existing chat corresponding to a known secret chat
  CreateSecretChat({required this.secretChatId, this.extra});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateSecretChat.fromJson(Map<String, dynamic> json) {
    return CreateSecretChat(
      secretChatId: json['secret_chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
