part of '../tdapi.dart';

class SearchMessages extends TdFunction {
  /// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).. For optimal performance the number of returned messages is chosen by the library
  SearchMessages(
      {this.chatList,
      required this.query,
      required this.offsetDate,
      required this.offsetChatId,
      required this.offsetMessageId,
      required this.limit,
      required this.filter,
      required this.minDate,
      required this.maxDate,
      this.extra});

  /// [chatList] Chat list in which to search messages; pass null to search in all chats regardless of their chat list
  ChatList? chatList;

  /// [query] Query to search for
  String query;

  /// [offsetDate] The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message
  int offsetDate;

  /// [offsetChatId] The chat identifier of the last found message, or 0 for the first request
  int offsetChatId;

  /// [offsetMessageId] The message identifier of the last found message, or 0 for the first request
  int offsetMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  int limit;

  /// [filter] Filter for message content in the search results; searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and searchMessagesFilterPinned are unsupported in this function
  SearchMessagesFilter filter;

  /// [minDate] If not 0, the minimum date of the messages to return
  int minDate;

  /// [maxDate] If not 0, the maximum date of the messages to return
  int maxDate;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchMessages.fromJson(Map<String, dynamic> json) {
    return SearchMessages(
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      query: json['query'] ?? "",
      offsetDate: json['offset_date'] ?? 0,
      offsetChatId: json['offset_chat_id'] ?? 0,
      offsetMessageId: json['offset_message_id'] ?? 0,
      limit: json['limit'] ?? 0,
      filter:
          SearchMessagesFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      minDate: json['min_date'] ?? 0,
      maxDate: json['max_date'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList == null ? null : this.chatList!.toJson(),
      "query": this.query,
      "offset_date": this.offsetDate,
      "offset_chat_id": this.offsetChatId,
      "offset_message_id": this.offsetMessageId,
      "limit": this.limit,
      "filter": this.filter.toJson(),
      "min_date": this.minDate,
      "max_date": this.maxDate,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
