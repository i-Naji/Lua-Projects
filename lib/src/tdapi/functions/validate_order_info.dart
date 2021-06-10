part of '../tdapi.dart';

class ValidateOrderInfo extends TdFunction {
  /// Validates the order information provided by a user and returns the available shipping options for a flexible invoice
  ValidateOrderInfo(
      {required this.chatId,
      required this.messageId,
      required this.orderInfo,
      required this.allowSave,
      this.extra});

  /// [chatId] Chat identifier of the Invoice message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [orderInfo] The order information, provided by the user
  OrderInfo orderInfo;

  /// [allowSave] True, if the order information can be saved
  bool allowSave;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ValidateOrderInfo.fromJson(Map<String, dynamic> json) {
    return ValidateOrderInfo(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      orderInfo: OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{}),
      allowSave: json['allow_save'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "order_info": this.orderInfo.toJson(),
      "allow_save": this.allowSave,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'validateOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
