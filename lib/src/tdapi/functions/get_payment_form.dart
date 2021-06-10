part of '../tdapi.dart';

class GetPaymentForm extends TdFunction {
  /// Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy
  GetPaymentForm({required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier of the Invoice message
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPaymentForm.fromJson(Map<String, dynamic> json) {
    return GetPaymentForm(
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

  static const CONSTRUCTOR = 'getPaymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
