part of '../tdapi.dart';

class GetMessagePublicForwards extends TdFunction {
  /// Returns forwarded copies of a channel message to different public channels. For optimal performance the number of returned messages is chosen by the library
  GetMessagePublicForwards(
      {required this.chatId,
      required this.messageId,
      required this.offset,
      required this.limit,
      this.extra});

  /// [chatId] Chat identifier of the message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [offset] Offset of the first entry to return as received from the previous request; use empty string to get first chunk of results
  String offset;

  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. Fewer messages may be returned than specified by the limit, even if the end of the list has not been reached
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessagePublicForwards.fromJson(Map<String, dynamic> json) {
    return GetMessagePublicForwards(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      offset: json['offset'] ?? "",
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessagePublicForwards';

  @override
  String getConstructor() => CONSTRUCTOR;
}
