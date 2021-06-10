part of '../tdapi.dart';

class ReorderChatFilters extends TdFunction {
  /// Changes the order of chat filters
  ReorderChatFilters({required this.chatFilterIds, this.extra});

  /// [chatFilterIds] Identifiers of chat filters in the new correct order
  List<int> chatFilterIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReorderChatFilters.fromJson(Map<String, dynamic> json) {
    return ReorderChatFilters(
      chatFilterIds: List<int>.from(
          (json['chat_filter_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_ids": this.chatFilterIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reorderChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
