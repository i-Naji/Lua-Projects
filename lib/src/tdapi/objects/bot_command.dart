part of '../tdapi.dart';

class BotCommand extends TdObject {
  /// Represents a command supported by a bot
  BotCommand({required this.command, required this.description});

  /// [command] Text of the bot command
  String command;

  /// [description] Description of the bot command
  String description;

  /// Parse from a json
  factory BotCommand.fromJson(Map<String, dynamic> json) {
    return BotCommand(
      command: json['command'] ?? "",
      description: json['description'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "command": this.command,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'botCommand';

  @override
  String getConstructor() => CONSTRUCTOR;
}
