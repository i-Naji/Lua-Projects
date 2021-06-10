part of '../tdapi.dart';

class ClosedVectorPath extends TdObject {
  /// Represents a closed vector path. The path begins at the end point of the last command
  ClosedVectorPath({required this.commands});

  /// [commands] List of vector path commands
  List<VectorPathCommand> commands;

  /// Parse from a json
  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) {
    return ClosedVectorPath(
      commands: List<VectorPathCommand>.from((json['commands'] ?? [])
          .map(
              (item) => VectorPathCommand.fromJson(item ?? <String, dynamic>{}))
          .toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "commands": this.commands.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'closedVectorPath';

  @override
  String getConstructor() => CONSTRUCTOR;
}
