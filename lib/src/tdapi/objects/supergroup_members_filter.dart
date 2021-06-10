part of '../tdapi.dart';

class SupergroupMembersFilter extends TdObject {
  /// Specifies the kind of chat members to return in getSupergroupMembers
  SupergroupMembersFilter();

  /// a SupergroupMembersFilter return type can be :
  /// * SupergroupMembersFilterRecent
  /// * SupergroupMembersFilterContacts
  /// * SupergroupMembersFilterAdministrators
  /// * SupergroupMembersFilterSearch
  /// * SupergroupMembersFilterRestricted
  /// * SupergroupMembersFilterBanned
  /// * SupergroupMembersFilterMention
  /// * SupergroupMembersFilterBots
  factory SupergroupMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SupergroupMembersFilterRecent.CONSTRUCTOR:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterContacts.CONSTRUCTOR:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterAdministrators.CONSTRUCTOR:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.CONSTRUCTOR:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.CONSTRUCTOR:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.CONSTRUCTOR:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterMention.CONSTRUCTOR:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterBots.CONSTRUCTOR:
        return SupergroupMembersFilterBots.fromJson(json);
      default:
        return SupergroupMembersFilter();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'supergroupMembersFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  /// Returns recently active users in reverse chronological order
  SupergroupMembersFilterRecent();

  /// Parse from a json
  factory SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterRecent();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterRecent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  /// Returns contacts of the user, which are members of the supergroup or channel
  SupergroupMembersFilterContacts({required this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  factory SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterContacts(
      query: json['query'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  /// Returns the owner and administrators
  SupergroupMembersFilterAdministrators();

  /// Parse from a json
  factory SupergroupMembersFilterAdministrators.fromJson(
      Map<String, dynamic> json) {
    return SupergroupMembersFilterAdministrators();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  /// Used to search for supergroup or channel members via a (string) query
  SupergroupMembersFilterSearch({required this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  factory SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterSearch(
      query: json['query'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterSearch';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  /// Returns restricted supergroup members; can be used only by administrators
  SupergroupMembersFilterRestricted({required this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  factory SupergroupMembersFilterRestricted.fromJson(
      Map<String, dynamic> json) {
    return SupergroupMembersFilterRestricted(
      query: json['query'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  /// Returns users banned from the supergroup or channel; can be used only by administrators
  SupergroupMembersFilterBanned({required this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  factory SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterBanned(
      query: json['query'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  /// Returns users which can be mentioned in the supergroup
  SupergroupMembersFilterMention(
      {required this.query, required this.messageThreadId});

  /// [query] Query to search for
  String query;

  /// [messageThreadId] If non-zero, the identifier of the current message thread
  int messageThreadId;

  /// Parse from a json
  factory SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterMention(
      query: json['query'] ?? "",
      messageThreadId: json['message_thread_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "message_thread_id": this.messageThreadId,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  /// Returns bot members of the supergroup or channel
  SupergroupMembersFilterBots();

  /// Parse from a json
  factory SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json) {
    return SupergroupMembersFilterBots();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
