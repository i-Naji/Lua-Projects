part of '../tdapi.dart';

class BotInfo extends TdObject {
  /// Provides information about a bot and its supported commands
  BotInfo({required this.description, required this.commands});

  /// [description] Long description shown on the user info page
  String description;

  /// [commands] A list of commands supported by the bot
  List<BotCommand> commands;

  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) {
    return BotInfo(
      description: json['description'] ?? "",
      commands: List<BotCommand>.from((json['commands'] ?? [])
          .map((item) => BotCommand.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "description": this.description,
      "commands": this.commands.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'botInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
