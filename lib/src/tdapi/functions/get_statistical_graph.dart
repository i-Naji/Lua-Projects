part of '../tdapi.dart';

class GetStatisticalGraph extends TdFunction {
  /// Loads an asynchronous or a zoomed in statistical graph
  GetStatisticalGraph(
      {required this.chatId, required this.token, required this.x, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [token] The token for graph loading
  String token;

  /// [x] X-value for zoomed in graph or 0 otherwise
  int x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStatisticalGraph.fromJson(Map<String, dynamic> json) {
    return GetStatisticalGraph(
      chatId: json['chat_id'] ?? 0,
      token: json['token'] ?? "",
      x: json['x'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "token": this.token,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStatisticalGraph';

  @override
  String getConstructor() => CONSTRUCTOR;
}
