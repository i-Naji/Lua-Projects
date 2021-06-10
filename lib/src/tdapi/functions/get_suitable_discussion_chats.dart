part of '../tdapi.dart';

class GetSuitableDiscussionChats extends TdFunction {
  /// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
  GetSuitableDiscussionChats({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSuitableDiscussionChats.fromJson(Map<String, dynamic> json) {
    return GetSuitableDiscussionChats(
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

  static const CONSTRUCTOR = 'getSuitableDiscussionChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
