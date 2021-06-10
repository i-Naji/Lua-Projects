part of '../tdapi.dart';

class SendCallDebugInformation extends TdFunction {
  /// Sends debug information for a call
  SendCallDebugInformation(
      {required this.callId, required this.debugInformation, this.extra});

  /// [callId] Call identifier
  int callId;

  /// [debugInformation] Debug information in application-specific format
  String debugInformation;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendCallDebugInformation.fromJson(Map<String, dynamic> json) {
    return SendCallDebugInformation(
      callId: json['call_id'] ?? 0,
      debugInformation: json['debug_information'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "debug_information": this.debugInformation,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCallDebugInformation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
