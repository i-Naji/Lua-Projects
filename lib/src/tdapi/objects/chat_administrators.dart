part of '../tdapi.dart';

class ChatAdministrators extends TdObject {
  /// Represents a list of chat administrators
  ChatAdministrators({required this.administrators, this.extra});

  /// [administrators] A list of chat administrators
  List<ChatAdministrator> administrators;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatAdministrators.fromJson(Map<String, dynamic> json) {
    return ChatAdministrators(
      administrators: List<ChatAdministrator>.from((json['administrators'] ??
              [])
          .map(
              (item) => ChatAdministrator.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "administrators": this.administrators.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}
