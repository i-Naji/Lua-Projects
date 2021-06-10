part of '../tdapi.dart';

class ChatType extends TdObject {
  /// Describes the type of a chat
  ChatType();

  /// a ChatType return type can be :
  /// * ChatTypePrivate
  /// * ChatTypeBasicGroup
  /// * ChatTypeSupergroup
  /// * ChatTypeSecret
  factory ChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatTypePrivate.CONSTRUCTOR:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.CONSTRUCTOR:
        return ChatTypeSecret.fromJson(json);
      default:
        return ChatType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypePrivate extends ChatType {
  /// An ordinary chat with a user
  ChatTypePrivate({required this.userId});

  /// [userId] User identifier
  int userId;

  /// Parse from a json
  factory ChatTypePrivate.fromJson(Map<String, dynamic> json) {
    return ChatTypePrivate(
      userId: json['user_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'chatTypePrivate';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeBasicGroup extends ChatType {
  /// A basic group (i.e., a chat with 0-200 other users)
  ChatTypeBasicGroup({required this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  /// Parse from a json
  factory ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    return ChatTypeBasicGroup(
      basicGroupId: json['basic_group_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
    };
  }

  static const CONSTRUCTOR = 'chatTypeBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSupergroup extends ChatType {
  /// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
  ChatTypeSupergroup({required this.supergroupId, required this.isChannel});

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  bool isChannel;

  /// Parse from a json
  factory ChatTypeSupergroup.fromJson(Map<String, dynamic> json) {
    return ChatTypeSupergroup(
      supergroupId: json['supergroup_id'] ?? 0,
      isChannel: json['is_channel'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "is_channel": this.isChannel,
    };
  }

  static const CONSTRUCTOR = 'chatTypeSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatTypeSecret extends ChatType {
  /// A secret chat with a user
  ChatTypeSecret({required this.secretChatId, required this.userId});

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// [userId] User identifier of the secret chat peer
  int userId;

  /// Parse from a json
  factory ChatTypeSecret.fromJson(Map<String, dynamic> json) {
    return ChatTypeSecret(
      secretChatId: json['secret_chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": this.secretChatId,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'chatTypeSecret';

  @override
  String getConstructor() => CONSTRUCTOR;
}
