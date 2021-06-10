part of '../tdapi.dart';

class RecommendedChatFilters extends TdObject {
  /// Contains a list of recommended chat filters
  RecommendedChatFilters({required this.chatFilters, this.extra});

  /// [chatFilters] List of recommended chat filters
  List<RecommendedChatFilter> chatFilters;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory RecommendedChatFilters.fromJson(Map<String, dynamic> json) {
    return RecommendedChatFilters(
      chatFilters: List<RecommendedChatFilter>.from((json['chat_filters'] ?? [])
          .map((item) =>
              RecommendedChatFilter.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": this.chatFilters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'recommendedChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
