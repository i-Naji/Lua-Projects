part of '../tdapi.dart';

class CallbackQueryAnswer extends TdObject {
  /// Contains a bot's answer to a callback query
  CallbackQueryAnswer(
      {required this.text,
      required this.showAlert,
      required this.url,
      this.extra});

  /// [text] Text of the answer
  String text;

  /// [showAlert] True, if an alert should be shown to the user instead of a toast notification
  bool showAlert;

  /// [url] URL to be opened
  String url;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory CallbackQueryAnswer.fromJson(Map<String, dynamic> json) {
    return CallbackQueryAnswer(
      text: json['text'] ?? "",
      showAlert: json['show_alert'] ?? false,
      url: json['url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "show_alert": this.showAlert,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'callbackQueryAnswer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
