part of '../tdapi.dart';

class SendBotStartMessage extends TdFunction {
  /// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message
  SendBotStartMessage(
      {required this.botUserId,
      required this.chatId,
      required this.parameter,
      this.extra});

  /// [botUserId] Identifier of the bot
  int botUserId;

  /// [chatId] Identifier of the target chat
  int chatId;

  /// [parameter] A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
  String parameter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendBotStartMessage.fromJson(Map<String, dynamic> json) {
    return SendBotStartMessage(
      botUserId: json['bot_user_id'] ?? 0,
      chatId: json['chat_id'] ?? 0,
      parameter: json['parameter'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "chat_id": this.chatId,
      "parameter": this.parameter,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendBotStartMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
