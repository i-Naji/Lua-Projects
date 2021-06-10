part of '../tdapi.dart';

class CanTransferOwnership extends TdFunction {
  /// Checks whether the current session can be used to transfer a chat ownership to another user
  CanTransferOwnership({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CanTransferOwnership.fromJson(Map<String, dynamic> json) {
    return CanTransferOwnership(
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

  static const CONSTRUCTOR = 'canTransferOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
}
