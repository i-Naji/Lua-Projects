part of '../tdapi.dart';

class SetBotUpdatesStatus extends TdFunction {
  /// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
  SetBotUpdatesStatus(
      {required this.pendingUpdateCount,
      required this.errorMessage,
      this.extra});

  /// [pendingUpdateCount] The number of pending updates
  int pendingUpdateCount;

  /// [errorMessage] The last error message
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetBotUpdatesStatus.fromJson(Map<String, dynamic> json) {
    return SetBotUpdatesStatus(
      pendingUpdateCount: json['pending_update_count'] ?? 0,
      errorMessage: json['error_message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pending_update_count": this.pendingUpdateCount,
      "error_message": this.errorMessage,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setBotUpdatesStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
