part of '../tdapi.dart';

class SearchChatMessages extends TdFunction {
  /// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query. (searchSecretMessages should be used instead), or without an enabled message database. For optimal performance the number of returned messages is chosen by the library
  SearchChatMessages(
      {required this.chatId,
      required this.query,
      this.sender,
      required this.fromMessageId,
      required this.offset,
      required this.limit,
      required this.filter,
      required this.messageThreadId,
      this.extra});

  /// [chatId] Identifier of the chat in which to search messages
  int chatId;

  /// [query] Query to search for
  String query;

  /// [sender] If not null, only messages sent by the specified sender will be returned. Not supported in secret chats
  MessageSender? sender;

  /// [fromMessageId] Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages
  int offset;

  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  int limit;

  /// [filter] Filter for message content in the search results
  SearchMessagesFilter filter;

  /// [messageThreadId] If not 0, only messages in the specified thread will be returned; supergroups only
  int messageThreadId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChatMessages.fromJson(Map<String, dynamic> json) {
    return SearchChatMessages(
      chatId: json['chat_id'] ?? 0,
      query: json['query'] ?? "",
      sender: MessageSender.fromJson(json['sender'] ?? <String, dynamic>{}),
      fromMessageId: json['from_message_id'] ?? 0,
      offset: json['offset'] ?? 0,
      limit: json['limit'] ?? 0,
      filter:
          SearchMessagesFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      messageThreadId: json['message_thread_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "sender": this.sender == null ? null : this.sender!.toJson(),
      "from_message_id": this.fromMessageId,
      "offset": this.offset,
      "limit": this.limit,
      "filter": this.filter.toJson(),
      "message_thread_id": this.messageThreadId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
