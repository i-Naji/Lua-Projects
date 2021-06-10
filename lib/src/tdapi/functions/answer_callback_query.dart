part of '../tdapi.dart';

class AnswerCallbackQuery extends TdFunction {
  /// Sets the result of a callback query; for bots only
  AnswerCallbackQuery(
      {required this.callbackQueryId,
      required this.text,
      required this.showAlert,
      required this.url,
      required this.cacheTime,
      this.extra});

  /// [callbackQueryId] Identifier of the callback query
  int callbackQueryId;

  /// [text] Text of the answer
  String text;

  /// [showAlert] If true, an alert should be shown to the user instead of a toast notification
  bool showAlert;

  /// [url] URL to be opened
  String url;

  /// [cacheTime] Time during which the result of the query can be cached, in seconds
  int cacheTime;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AnswerCallbackQuery.fromJson(Map<String, dynamic> json) {
    return AnswerCallbackQuery(
      callbackQueryId: int.tryParse(json['callback_query_id'] ?? "") ?? 0,
      text: json['text'] ?? "",
      showAlert: json['show_alert'] ?? false,
      url: json['url'] ?? "",
      cacheTime: json['cache_time'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "callback_query_id": this.callbackQueryId,
      "text": this.text,
      "show_alert": this.showAlert,
      "url": this.url,
      "cache_time": this.cacheTime,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
