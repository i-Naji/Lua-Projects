part of '../tdapi.dart';

class SendPaymentForm extends TdFunction {
  /// Sends a filled-out payment form to the bot for final verification
  SendPaymentForm(
      {required this.chatId,
      required this.messageId,
      required this.orderInfoId,
      required this.shippingOptionId,
      required this.credentials,
      this.extra});

  /// [chatId] Chat identifier of the Invoice message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [orderInfoId] Identifier returned by ValidateOrderInfo, or an empty string
  String orderInfoId;

  /// [shippingOptionId] Identifier of a chosen shipping option, if applicable
  String shippingOptionId;

  /// [credentials] The credentials chosen by user for payment
  InputCredentials credentials;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendPaymentForm.fromJson(Map<String, dynamic> json) {
    return SendPaymentForm(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      orderInfoId: json['order_info_id'] ?? "",
      shippingOptionId: json['shipping_option_id'] ?? "",
      credentials:
          InputCredentials.fromJson(json['credentials'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "order_info_id": this.orderInfoId,
      "shipping_option_id": this.shippingOptionId,
      "credentials": this.credentials.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
