part of '../tdapi.dart';

class SearchChatRecentLocationMessages extends TdFunction {
  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user
  SearchChatRecentLocationMessages(
      {required this.chatId, required this.limit, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [limit] The maximum number of messages to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json) {
    return SearchChatRecentLocationMessages(
      chatId: json['chat_id'] ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatRecentLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
