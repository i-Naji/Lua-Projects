part of '../tdapi.dart';

class GetMessageEmbeddingCode extends TdFunction {
  /// Returns an HTML code for embedding the message. Available only for messages in supergroups and channels with a username
  GetMessageEmbeddingCode(
      {required this.chatId,
      required this.messageId,
      required this.forAlbum,
      this.extra});

  /// [chatId] Identifier of the chat to which the message belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [forAlbum] Pass true to return an HTML code for embedding of the whole media album
  bool forAlbum;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageEmbeddingCode.fromJson(Map<String, dynamic> json) {
    return GetMessageEmbeddingCode(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      forAlbum: json['for_album'] ?? false,
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
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageEmbeddingCode';

  @override
  String getConstructor() => CONSTRUCTOR;
}
