part of '../tdapi.dart';

class SendChatSetTtlMessage extends TdFunction {
  /// Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding message
  SendChatSetTtlMessage({required this.chatId, required this.ttl, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [ttl] New TTL value, in seconds
  int ttl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendChatSetTtlMessage.fromJson(Map<String, dynamic> json) {
    return SendChatSetTtlMessage(
      chatId: json['chat_id'] ?? 0,
      ttl: json['ttl'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "ttl": this.ttl,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendChatSetTtlMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
