part of '../tdapi.dart';

class EditChatFilter extends TdFunction {
  /// Edits existing chat filter. Returns information about the edited chat filter
  EditChatFilter(
      {required this.chatFilterId, required this.filter, this.extra});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// [filter] The edited chat filter
  ChatFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditChatFilter.fromJson(Map<String, dynamic> json) {
    return EditChatFilter(
      chatFilterId: json['chat_filter_id'] ?? 0,
      filter: ChatFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "filter": this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
