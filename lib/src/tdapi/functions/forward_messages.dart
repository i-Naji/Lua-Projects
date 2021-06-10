part of '../tdapi.dart';

class ForwardMessages extends TdFunction {
  /// Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message
  ForwardMessages(
      {required this.chatId,
      required this.fromChatId,
      required this.messageIds,
      required this.options,
      required this.sendCopy,
      required this.removeCaption,
      this.extra});

  /// [chatId] Identifier of the chat to which to forward messages
  int chatId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers must be in a strictly increasing order. At most 100 messages can be forwarded simultaneously
  List<int> messageIds;

  /// [options] Options to be used to send the messages
  MessageSendOptions options;

  /// [sendCopy] True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat
  bool sendCopy;

  /// [removeCaption] True, if media caption of message copies needs to be removed. Ignored if send_copy is false
  bool removeCaption;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ForwardMessages.fromJson(Map<String, dynamic> json) {
    return ForwardMessages(
      chatId: json['chat_id'] ?? 0,
      fromChatId: json['from_chat_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      options:
          MessageSendOptions.fromJson(json['options'] ?? <String, dynamic>{}),
      sendCopy: json['send_copy'] ?? false,
      removeCaption: json['remove_caption'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "from_chat_id": this.fromChatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "options": this.options.toJson(),
      "send_copy": this.sendCopy,
      "remove_caption": this.removeCaption,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'forwardMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
