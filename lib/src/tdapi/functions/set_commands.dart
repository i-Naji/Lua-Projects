part of '../tdapi.dart';

class SetCommands extends TdFunction {
  /// Sets the list of commands supported by the bot; for bots only
  SetCommands({required this.commands, this.extra});

  /// [commands] List of the bot's commands
  List<BotCommand> commands;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetCommands.fromJson(Map<String, dynamic> json) {
    return SetCommands(
      commands: List<BotCommand>.from((json['commands'] ?? [])
          .map((item) => BotCommand.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "commands": this.commands.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCommands';

  @override
  String getConstructor() => CONSTRUCTOR;
}
