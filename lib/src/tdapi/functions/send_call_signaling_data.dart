part of '../tdapi.dart';

class SendCallSignalingData extends TdFunction {
  /// Sends call signaling data
  SendCallSignalingData({required this.callId, required this.data, this.extra});

  /// [callId] Call identifier
  int callId;

  /// [data] The data
  String data;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendCallSignalingData.fromJson(Map<String, dynamic> json) {
    return SendCallSignalingData(
      callId: json['call_id'] ?? 0,
      data: json['data'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "data": this.data,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCallSignalingData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
