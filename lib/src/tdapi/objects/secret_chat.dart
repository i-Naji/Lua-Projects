part of '../tdapi.dart';

class SecretChat extends TdObject {
  /// Represents a secret chat
  SecretChat(
      {required this.id,
      required this.userId,
      required this.state,
      required this.isOutbound,
      required this.ttl,
      required this.keyHash,
      required this.layer,
      this.extra});

  /// [id] Secret chat identifier
  int id;

  /// [userId] Identifier of the chat partner
  int userId;

  /// [state] State of the secret chat
  SecretChatState state;

  /// [isOutbound] True, if the chat was created by the current user; otherwise false
  bool isOutbound;

  /// [ttl] Current message Time To Live setting (self-destruct timer) for the chat, in seconds
  int ttl;

  /// [keyHash] Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers
  String keyHash;

  /// [layer] Secret chat layer; determines features supported by the chat partner's application. Video notes are supported if the layer
  int layer;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory SecretChat.fromJson(Map<String, dynamic> json) {
    return SecretChat(
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
      state: SecretChatState.fromJson(json['state'] ?? <String, dynamic>{}),
      isOutbound: json['is_outbound'] ?? false,
      ttl: json['ttl'] ?? 0,
      keyHash: json['key_hash'] ?? "",
      layer: json['layer'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "user_id": this.userId,
      "state": this.state.toJson(),
      "is_outbound": this.isOutbound,
      "ttl": this.ttl,
      "key_hash": this.keyHash,
      "layer": this.layer,
    };
  }

  static const CONSTRUCTOR = 'secretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
