part of '../tdapi.dart';

class CreateChatFilter extends TdFunction {
  /// Creates new chat filter. Returns information about the created chat filter
  CreateChatFilter({required this.filter, this.extra});

  /// [filter] Chat filter
  ChatFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateChatFilter.fromJson(Map<String, dynamic> json) {
    return CreateChatFilter(
      filter: ChatFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "filter": this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
