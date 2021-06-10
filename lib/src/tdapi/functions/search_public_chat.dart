part of '../tdapi.dart';

class SearchPublicChat extends TdFunction {
  /// Searches a public chat by its username. Currently only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned
  SearchPublicChat({required this.username, this.extra});

  /// [username] Username to be resolved
  String username;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchPublicChat.fromJson(Map<String, dynamic> json) {
    return SearchPublicChat(
      username: json['username'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchPublicChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
