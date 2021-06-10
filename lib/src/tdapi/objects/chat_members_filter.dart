part of '../tdapi.dart';

class ChatMembersFilter extends TdObject {
  /// Specifies the kind of chat members to return in searchChatMembers
  ChatMembersFilter();

  /// a ChatMembersFilter return type can be :
  /// * ChatMembersFilterContacts
  /// * ChatMembersFilterAdministrators
  /// * ChatMembersFilterMembers
  /// * ChatMembersFilterMention
  /// * ChatMembersFilterRestricted
  /// * ChatMembersFilterBanned
  /// * ChatMembersFilterBots
  factory ChatMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return ChatMembersFilterContacts.fromJson(json);
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterMention.CONSTRUCTOR:
        return ChatMembersFilterMention.fromJson(json);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return ChatMembersFilterBots.fromJson(json);
      default:
        return ChatMembersFilter();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatMembersFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterContacts extends ChatMembersFilter {
  /// Returns contacts of the user
  ChatMembersFilterContacts();

  /// Parse from a json
  factory ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterContacts();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterAdministrators extends ChatMembersFilter {
  /// Returns the owner and administrators
  ChatMembersFilterAdministrators();

  /// Parse from a json
  factory ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterAdministrators();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterMembers extends ChatMembersFilter {
  /// Returns all chat members, including restricted chat members
  ChatMembersFilterMembers();

  /// Parse from a json
  factory ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterMembers();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterMention extends ChatMembersFilter {
  /// Returns users which can be mentioned in the chat
  ChatMembersFilterMention({required this.messageThreadId});

  /// [messageThreadId] If non-zero, the identifier of the current message thread
  int messageThreadId;

  /// Parse from a json
  factory ChatMembersFilterMention.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterMention(
      messageThreadId: json['message_thread_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_thread_id": this.messageThreadId,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterRestricted extends ChatMembersFilter {
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
  ChatMembersFilterRestricted();

  /// Parse from a json
  factory ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterRestricted();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBanned extends ChatMembersFilter {
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
  ChatMembersFilterBanned();

  /// Parse from a json
  factory ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterBanned();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBots extends ChatMembersFilter {
  /// Returns bot members of the chat
  ChatMembersFilterBots();

  /// Parse from a json
  factory ChatMembersFilterBots.fromJson(Map<String, dynamic> json) {
    return ChatMembersFilterBots();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
