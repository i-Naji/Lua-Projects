part of '../tdapi.dart';

class ClearRecentlyFoundChats extends TdFunction {
  /// Clears the list of recently found chats
  ClearRecentlyFoundChats({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json) {
    return ClearRecentlyFoundChats(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
