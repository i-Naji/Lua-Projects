part of '../tdapi.dart';

class CloseSecretChat extends TdFunction {
  /// Closes a secret chat, effectively transferring its state to secretChatStateClosed
  CloseSecretChat({required this.secretChatId, this.extra});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CloseSecretChat.fromJson(Map<String, dynamic> json) {
    return CloseSecretChat(
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

  static const CONSTRUCTOR = 'closeSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
