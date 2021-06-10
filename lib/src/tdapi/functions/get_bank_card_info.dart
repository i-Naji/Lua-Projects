part of '../tdapi.dart';

class GetBankCardInfo extends TdFunction {
  /// Returns information about a bank card
  GetBankCardInfo({required this.bankCardNumber, this.extra});

  /// [bankCardNumber] The bank card number
  String bankCardNumber;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetBankCardInfo.fromJson(Map<String, dynamic> json) {
    return GetBankCardInfo(
      bankCardNumber: json['bank_card_number'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_card_number": this.bankCardNumber,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBankCardInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
