part of '../tdapi.dart';

class SetChatClientData extends TdFunction {
  /// Changes application-specific data associated with a chat
  SetChatClientData(
      {required this.chatId, required this.clientData, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [clientData] New value of client_data
  String clientData;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatClientData.fromJson(Map<String, dynamic> json) {
    return SetChatClientData(
      chatId: json['chat_id'] ?? 0,
      clientData: json['client_data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "client_data": this.clientData,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatClientData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
