part of '../tdapi.dart';

class GetMessageLink extends TdFunction {
  /// Returns an HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. This is an offline request
  GetMessageLink(
      {required this.chatId,
      required this.messageId,
      required this.forAlbum,
      required this.forComment,
      this.extra});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [forAlbum] Pass true to create a link for the whole media album
  bool forAlbum;

  /// [forComment] Pass true to create a link to the message as a channel post comment, or from a message thread
  bool forComment;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageLink.fromJson(Map<String, dynamic> json) {
    return GetMessageLink(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      forAlbum: json['for_album'] ?? false,
      forComment: json['for_comment'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "for_album": this.forAlbum,
      "for_comment": this.forComment,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
