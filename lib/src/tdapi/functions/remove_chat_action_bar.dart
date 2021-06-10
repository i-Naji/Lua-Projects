part of '../tdapi.dart';

class RemoveChatActionBar extends TdFunction {
  /// Removes a chat action bar without any other action
  RemoveChatActionBar({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveChatActionBar.fromJson(Map<String, dynamic> json) {
    return RemoveChatActionBar(
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

  static const CONSTRUCTOR = 'removeChatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
}
