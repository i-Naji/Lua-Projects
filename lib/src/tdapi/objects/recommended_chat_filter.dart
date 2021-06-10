part of '../tdapi.dart';

class RecommendedChatFilter extends TdObject {
  /// Describes a recommended chat filter
  RecommendedChatFilter({required this.filter, required this.description});

  /// [filter] The chat filter
  ChatFilter filter;

  /// [description] Chat filter description
  String description;

  /// Parse from a json
  factory RecommendedChatFilter.fromJson(Map<String, dynamic> json) {
    return RecommendedChatFilter(
      filter: ChatFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      description: json['description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter.toJson(),
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'recommendedChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
