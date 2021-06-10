part of '../tdapi.dart';

class CreateVoiceChat extends TdFunction {
  /// Creates a voice chat (a group call bound to a chat). Available only for basic groups and supergroups; requires can_manage_voice_chats rights
  CreateVoiceChat({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateVoiceChat.fromJson(Map<String, dynamic> json) {
    return CreateVoiceChat(
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createVoiceChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
