part of '../tdapi.dart';

class GetChatMessageCount extends TdFunction {
  /// Returns approximate number of messages of the specified type in the chat
  GetChatMessageCount(
      {required this.chatId,
      required this.filter,
      required this.returnLocal,
      this.extra});

  /// [chatId] Identifier of the chat in which to count messages
  int chatId;

  /// [filter] Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  SearchMessagesFilter filter;

  /// [returnLocal] If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown
  bool returnLocal;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatMessageCount.fromJson(Map<String, dynamic> json) {
    return GetChatMessageCount(
      chatId: json['chat_id'] ?? 0,
      filter:
          SearchMessagesFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      returnLocal: json['return_local'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "filter": this.filter.toJson(),
      "return_local": this.returnLocal,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatMessageCount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
