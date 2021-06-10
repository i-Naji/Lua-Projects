part of '../tdapi.dart';

class AcceptCall extends TdFunction {
  /// Accepts an incoming call
  AcceptCall({required this.callId, required this.protocol, this.extra});

  /// [callId] Call identifier
  int callId;

  /// [protocol] Description of the call protocols supported by the application
  CallProtocol protocol;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AcceptCall.fromJson(Map<String, dynamic> json) {
    return AcceptCall(
      callId: json['call_id'] ?? 0,
      protocol: CallProtocol.fromJson(json['protocol'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "protocol": this.protocol.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'acceptCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
