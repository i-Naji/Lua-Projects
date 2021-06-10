part of '../tdapi.dart';

class GetSecretChat extends TdFunction {
  /// Returns information about a secret chat by its identifier. This is an offline request
  GetSecretChat({required this.secretChatId, this.extra});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSecretChat.fromJson(Map<String, dynamic> json) {
    return GetSecretChat(
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

  static const CONSTRUCTOR = 'getSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
