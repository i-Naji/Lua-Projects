part of '../tdapi.dart';

class GetChatFilterDefaultIconName extends TdFunction {
  /// Returns default icon name for a filter. Can be called synchronously
  GetChatFilterDefaultIconName({required this.filter, this.extra});

  /// [filter] Chat filter
  ChatFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) {
    return GetChatFilterDefaultIconName(
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

  static const CONSTRUCTOR = 'getChatFilterDefaultIconName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
