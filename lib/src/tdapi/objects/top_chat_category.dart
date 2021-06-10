part of '../tdapi.dart';

class TopChatCategory extends TdObject {
  /// Represents the categories of chats for which a list of frequently used chats can be retrieved
  TopChatCategory();

  /// a TopChatCategory return type can be :
  /// * TopChatCategoryUsers
  /// * TopChatCategoryBots
  /// * TopChatCategoryGroups
  /// * TopChatCategoryChannels
  /// * TopChatCategoryInlineBots
  /// * TopChatCategoryCalls
  /// * TopChatCategoryForwardChats
  factory TopChatCategory.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TopChatCategoryUsers.CONSTRUCTOR:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryBots.CONSTRUCTOR:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryGroups.CONSTRUCTOR:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryChannels.CONSTRUCTOR:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryInlineBots.CONSTRUCTOR:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryCalls.CONSTRUCTOR:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryForwardChats.CONSTRUCTOR:
        return TopChatCategoryForwardChats.fromJson(json);
      default:
        return TopChatCategory();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'topChatCategory';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryUsers extends TopChatCategory {
  /// A category containing frequently used private chats with non-bot users
  TopChatCategoryUsers();

  /// Parse from a json
  factory TopChatCategoryUsers.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryUsers();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryUsers';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryBots extends TopChatCategory {
  /// A category containing frequently used private chats with bot users
  TopChatCategoryBots();

  /// Parse from a json
  factory TopChatCategoryBots.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryBots();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryGroups extends TopChatCategory {
  /// A category containing frequently used basic groups and supergroups
  TopChatCategoryGroups();

  /// Parse from a json
  factory TopChatCategoryGroups.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryGroups();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryGroups';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryChannels extends TopChatCategory {
  /// A category containing frequently used channels
  TopChatCategoryChannels();

  /// Parse from a json
  factory TopChatCategoryChannels.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryChannels();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryChannels';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryInlineBots extends TopChatCategory {
  /// A category containing frequently used chats with inline bots sorted by their usage in inline mode
  TopChatCategoryInlineBots();

  /// Parse from a json
  factory TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryInlineBots();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryInlineBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryCalls extends TopChatCategory {
  /// A category containing frequently used chats used for calls
  TopChatCategoryCalls();

  /// Parse from a json
  factory TopChatCategoryCalls.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryCalls();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class TopChatCategoryForwardChats extends TopChatCategory {
  /// A category containing frequently used chats used to forward messages
  TopChatCategoryForwardChats();

  /// Parse from a json
  factory TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json) {
    return TopChatCategoryForwardChats();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'topChatCategoryForwardChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
