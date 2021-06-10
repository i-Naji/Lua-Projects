part of '../tdapi.dart';

class AnswerInlineQuery extends TdFunction {
  /// Sets the result of an inline query; for bots only
  AnswerInlineQuery(
      {required this.inlineQueryId,
      required this.isPersonal,
      required this.results,
      required this.cacheTime,
      required this.nextOffset,
      required this.switchPmText,
      required this.switchPmParameter,
      this.extra});

  /// [inlineQueryId] Identifier of the inline query
  int inlineQueryId;

  /// [isPersonal] True, if the result of the query can be cached for the specified user
  bool isPersonal;

  /// [results] The results of the query
  List<InputInlineQueryResult> results;

  /// [cacheTime] Allowed time to cache the results of the query, in seconds
  int cacheTime;

  /// [nextOffset] Offset for the next inline query; pass an empty string if there are no more results
  String nextOffset;

  /// [switchPmText] If non-empty, this text should be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
  String switchPmText;

  /// [switchPmParameter] The parameter for the bot start message
  String switchPmParameter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AnswerInlineQuery.fromJson(Map<String, dynamic> json) {
    return AnswerInlineQuery(
      inlineQueryId: int.tryParse(json['inline_query_id'] ?? "") ?? 0,
      isPersonal: json['is_personal'] ?? false,
      results: List<InputInlineQueryResult>.from((json['results'] ?? [])
          .map((item) =>
              InputInlineQueryResult.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      cacheTime: json['cache_time'] ?? 0,
      nextOffset: json['next_offset'] ?? "",
      switchPmText: json['switch_pm_text'] ?? "",
      switchPmParameter: json['switch_pm_parameter'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_query_id": this.inlineQueryId,
      "is_personal": this.isPersonal,
      "results": this.results.map((i) => i.toJson()).toList(),
      "cache_time": this.cacheTime,
      "next_offset": this.nextOffset,
      "switch_pm_text": this.switchPmText,
      "switch_pm_parameter": this.switchPmParameter,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'answerInlineQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
}
