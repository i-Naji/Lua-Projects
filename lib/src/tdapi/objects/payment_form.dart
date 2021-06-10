part of '../tdapi.dart';

class PaymentForm extends TdObject {
  /// Contains information about an invoice payment form
  PaymentForm(
      {required this.invoice,
      required this.url,
      this.paymentsProvider,
      this.savedOrderInfo,
      this.savedCredentials,
      required this.canSaveCredentials,
      required this.needPassword,
      this.extra});

  /// [invoice] Full information of the invoice
  Invoice invoice;

  /// [url] Payment form URL
  String url;

  /// [paymentsProvider] Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
  PaymentsProviderStripe? paymentsProvider;

  /// [savedOrderInfo] Saved server-side order information; may be null
  OrderInfo? savedOrderInfo;

  /// [savedCredentials] Contains information about saved card credentials; may be null
  SavedCredentials? savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials protected by a password they set up
  bool needPassword;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PaymentForm.fromJson(Map<String, dynamic> json) {
    return PaymentForm(
      invoice: Invoice.fromJson(json['invoice'] ?? <String, dynamic>{}),
      url: json['url'] ?? "",
      paymentsProvider: PaymentsProviderStripe.fromJson(
          json['payments_provider'] ?? <String, dynamic>{}),
      savedOrderInfo:
          OrderInfo.fromJson(json['saved_order_info'] ?? <String, dynamic>{}),
      savedCredentials: SavedCredentials.fromJson(
          json['saved_credentials'] ?? <String, dynamic>{}),
      canSaveCredentials: json['can_save_credentials'] ?? false,
      needPassword: json['need_password'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": this.invoice.toJson(),
      "url": this.url,
      "payments_provider": this.paymentsProvider == null
          ? null
          : this.paymentsProvider!.toJson(),
      "saved_order_info":
          this.savedOrderInfo == null ? null : this.savedOrderInfo!.toJson(),
      "saved_credentials": this.savedCredentials == null
          ? null
          : this.savedCredentials!.toJson(),
      "can_save_credentials": this.canSaveCredentials,
      "need_password": this.needPassword,
    };
  }

  static const CONSTRUCTOR = 'paymentForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
