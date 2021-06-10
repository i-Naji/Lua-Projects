part of '../tdapi.dart';

class ChatFilterInfo extends TdObject {
  /// Contains basic information about a chat filter
  ChatFilterInfo(
      {required this.id,
      required this.title,
      required this.iconName,
      this.extra});

  /// [id] Unique chat filter identifier
  int id;

  /// [title] The title of the filter; 1-12 characters without line feeds
  String title;

  /// [iconName] The icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
  String iconName;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatFilterInfo.fromJson(Map<String, dynamic> json) {
    return ChatFilterInfo(
      id: json['id'] ?? 0,
      title: json['title'] ?? "",
      iconName: json['icon_name'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "icon_name": this.iconName,
    };
  }

  static const CONSTRUCTOR = 'chatFilterInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
