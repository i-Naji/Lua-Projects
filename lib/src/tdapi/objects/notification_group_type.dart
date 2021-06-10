part of '../tdapi.dart';

class NotificationGroupType extends TdObject {
  /// Describes the type of notifications in a notification group
  NotificationGroupType();

  /// a NotificationGroupType return type can be :
  /// * NotificationGroupTypeMessages
  /// * NotificationGroupTypeMentions
  /// * NotificationGroupTypeSecretChat
  /// * NotificationGroupTypeCalls
  factory NotificationGroupType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NotificationGroupTypeMessages.CONSTRUCTOR:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.CONSTRUCTOR:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.CONSTRUCTOR:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.CONSTRUCTOR:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        return NotificationGroupType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'notificationGroupType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeMessages extends NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages
  NotificationGroupTypeMessages();

  /// Parse from a json
  factory NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json) {
    return NotificationGroupTypeMessages();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationGroupTypeMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeMentions extends NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message
  NotificationGroupTypeMentions();

  /// Parse from a json
  factory NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json) {
    return NotificationGroupTypeMentions();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationGroupTypeMentions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeSecretChat extends NotificationGroupType {
  /// A group containing a notification of type notificationTypeNewSecretChat
  NotificationGroupTypeSecretChat();

  /// Parse from a json
  factory NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json) {
    return NotificationGroupTypeSecretChat();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationGroupTypeSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NotificationGroupTypeCalls extends NotificationGroupType {
  /// A group containing notifications of type notificationTypeNewCall
  NotificationGroupTypeCalls();

  /// Parse from a json
  factory NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json) {
    return NotificationGroupTypeCalls();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'notificationGroupTypeCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}
