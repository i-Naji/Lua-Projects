part of '../tdapi.dart';

class SaveApplicationLogEvent extends TdFunction {
  /// Saves application log event on the server. Can be called before authorization
  SaveApplicationLogEvent(
      {required this.type,
      required this.chatId,
      required this.data,
      this.extra});

  /// [type] Event type
  String type;

  /// [chatId] Optional chat identifier, associated with the event
  int chatId;

  /// [data] The log event data
  JsonValue data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SaveApplicationLogEvent.fromJson(Map<String, dynamic> json) {
    return SaveApplicationLogEvent(
      type: json['type'] ?? "",
      chatId: json['chat_id'] ?? 0,
      data: JsonValue.fromJson(json['data'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "chat_id": this.chatId,
      "data": this.data.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'saveApplicationLogEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
}
