part of '../tdapi.dart';

class GetPollVoters extends TdFunction {
  /// Returns users voted for the specified option in a non-anonymous polls. For the optimal performance the number of returned users is chosen by the library
  GetPollVoters(
      {required this.chatId,
      required this.messageId,
      required this.optionId,
      required this.offset,
      required this.limit,
      this.extra});

  /// [chatId] Identifier of the chat to which the poll belongs
  int chatId;

  /// [messageId] Identifier of the message containing the poll
  int messageId;

  /// [optionId] 0-based identifier of the answer option
  int optionId;

  /// [offset] Number of users to skip in the result; must be non-negative
  int offset;

  /// [limit] The maximum number of users to be returned; must be positive and can't be greater than 50. Fewer users may be returned than specified by the limit, even if the end of the voter list has not been reached
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPollVoters.fromJson(Map<String, dynamic> json) {
    return GetPollVoters(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      optionId: json['option_id'] ?? 0,
      offset: json['offset'] ?? 0,
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
      "option_id": this.optionId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPollVoters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
