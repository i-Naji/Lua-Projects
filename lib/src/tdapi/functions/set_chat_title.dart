part of '../tdapi.dart';

class SetChatTitle extends TdFunction {
  /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info rights
  SetChatTitle({required this.chatId, required this.title, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [title] New title of the chat; 1-128 characters
  String title;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatTitle.fromJson(Map<String, dynamic> json) {
    return SetChatTitle(
      chatId: json['chat_id'] ?? 0,
      title: json['title'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "title": this.title,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
}
