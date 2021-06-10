part of '../tdapi.dart';

class CreateNewSupergroupChat extends TdFunction {
  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
  CreateNewSupergroupChat(
      {required this.title,
      required this.isChannel,
      required this.description,
      required this.location,
      this.extra});

  /// [title] Title of the new chat; 1-128 characters
  String title;

  /// [isChannel] True, if a channel chat should be created
  bool isChannel;

  /// [description] Chat description; 0-255 characters
  String description;

  /// [location] Chat location if a location-based supergroup is being created
  ChatLocation location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateNewSupergroupChat.fromJson(Map<String, dynamic> json) {
    return CreateNewSupergroupChat(
      title: json['title'] ?? "",
      isChannel: json['is_channel'] ?? false,
      description: json['description'] ?? "",
      location: ChatLocation.fromJson(json['location'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "is_channel": this.isChannel,
      "description": this.description,
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
