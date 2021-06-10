part of '../tdapi.dart';

class UserType extends TdObject {
  /// Represents the type of a user. The following types are possible: regular users, deleted users and bots
  UserType();

  /// a UserType return type can be :
  /// * UserTypeRegular
  /// * UserTypeDeleted
  /// * UserTypeBot
  /// * UserTypeUnknown
  factory UserType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return UserType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'userType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeRegular extends UserType {
  /// A regular user
  UserTypeRegular();

  /// Parse from a json
  factory UserTypeRegular.fromJson(Map<String, dynamic> json) {
    return UserTypeRegular();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeDeleted extends UserType {
  /// A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user
  UserTypeDeleted();

  /// Parse from a json
  factory UserTypeDeleted.fromJson(Map<String, dynamic> json) {
    return UserTypeDeleted();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userTypeDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeBot extends UserType {
  /// A bot (see https://core.telegram.org/bots)
  UserTypeBot(
      {required this.canJoinGroups,
      required this.canReadAllGroupMessages,
      required this.isInline,
      required this.inlineQueryPlaceholder,
      required this.needLocation});

  /// [canJoinGroups] True, if the bot can be invited to basic group and supergroup chats
  bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  bool canReadAllGroupMessages;

  /// [isInline] True, if the bot supports inline queries
  bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the application input field)
  String inlineQueryPlaceholder;

  /// [needLocation] True, if the location of the user should be sent with every inline query to this bot
  bool needLocation;

  /// Parse from a json
  factory UserTypeBot.fromJson(Map<String, dynamic> json) {
    return UserTypeBot(
      canJoinGroups: json['can_join_groups'] ?? false,
      canReadAllGroupMessages: json['can_read_all_group_messages'] ?? false,
      isInline: json['is_inline'] ?? false,
      inlineQueryPlaceholder: json['inline_query_placeholder'] ?? "",
      needLocation: json['need_location'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_join_groups": this.canJoinGroups,
      "can_read_all_group_messages": this.canReadAllGroupMessages,
      "is_inline": this.isInline,
      "inline_query_placeholder": this.inlineQueryPlaceholder,
      "need_location": this.needLocation,
    };
  }

  static const CONSTRUCTOR = 'userTypeBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserTypeUnknown extends UserType {
  /// No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type
  UserTypeUnknown();

  /// Parse from a json
  factory UserTypeUnknown.fromJson(Map<String, dynamic> json) {
    return UserTypeUnknown();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}
