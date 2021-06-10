part of '../tdapi.dart';

class BankCardActionOpenUrl extends TdObject {
  /// Describes an action associated with a bank card number
  BankCardActionOpenUrl({required this.text, required this.url});

  /// [text] Action text
  String text;

  /// [url] The URL to be opened
  String url;

  /// Parse from a json
  factory BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) {
    return BankCardActionOpenUrl(
      text: json['text'] ?? "",
      url: json['url'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'bankCardActionOpenUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
