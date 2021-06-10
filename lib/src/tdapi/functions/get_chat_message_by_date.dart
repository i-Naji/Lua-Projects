part of '../tdapi.dart';

class GetChatMessageByDate extends TdFunction {
  /// Returns the last message sent in a chat no later than the specified date
  GetChatMessageByDate({required this.chatId, required this.date, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [date] Point in time (Unix timestamp) relative to which to search for messages
  int date;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatMessageByDate.fromJson(Map<String, dynamic> json) {
    return GetChatMessageByDate(
      chatId: json['chat_id'] ?? 0,
      date: json['date'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "date": this.date,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMessageByDate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
