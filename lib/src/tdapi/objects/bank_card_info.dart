part of '../tdapi.dart';

class BankCardInfo extends TdObject {
  /// Information about a bank card
  BankCardInfo({required this.title, required this.actions, this.extra});

  /// [title] Title of the bank card description
  String title;

  /// [actions] Actions that can be done with the bank card number
  List<BankCardActionOpenUrl> actions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory BankCardInfo.fromJson(Map<String, dynamic> json) {
    return BankCardInfo(
      title: json['title'] ?? "",
      actions: List<BankCardActionOpenUrl>.from((json['actions'] ?? [])
          .map((item) =>
              BankCardActionOpenUrl.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "actions": this.actions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'bankCardInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
