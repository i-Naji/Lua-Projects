part of '../tdapi.dart';

class GetPaymentReceipt extends TdFunction {
  /// Returns information about a successful payment
  GetPaymentReceipt(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier of the PaymentSuccessful message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPaymentReceipt.fromJson(Map<String, dynamic> json) {
    return GetPaymentReceipt(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPaymentReceipt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
