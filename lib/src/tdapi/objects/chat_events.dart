part of '../tdapi.dart';

class ChatEvents extends TdObject {
  /// Contains a list of chat events
  ChatEvents({required this.events, this.extra});

  /// [events] List of events
  List<ChatEvent> events;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatEvents.fromJson(Map<String, dynamic> json) {
    return ChatEvents(
      events: List<ChatEvent>.from((json['events'] ?? [])
          .map((item) => ChatEvent.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "events": this.events.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatEvents';

  @override
  String getConstructor() => CONSTRUCTOR;
}
