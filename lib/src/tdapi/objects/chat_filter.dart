part of '../tdapi.dart';

class ChatFilter extends TdObject {
  /// Represents a filter of user chats
  ChatFilter(
      {required this.title,
      required this.iconName,
      required this.pinnedChatIds,
      required this.includedChatIds,
      required this.excludedChatIds,
      required this.excludeMuted,
      required this.excludeRead,
      required this.excludeArchived,
      required this.includeContacts,
      required this.includeNonContacts,
      required this.includeBots,
      required this.includeGroups,
      required this.includeChannels,
      this.extra});

  /// [title] The title of the filter; 1-12 characters without line feeds
  String title;

  /// [iconName] The icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".. If empty, use getChatFilterDefaultIconName to get default icon name for the filter
  String iconName;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the filtered chat list
  List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the filtered chat list
  List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the filtered chat list
  List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  bool includeChannels;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatFilter.fromJson(Map<String, dynamic> json) {
    return ChatFilter(
      title: json['title'] ?? "",
      iconName: json['icon_name'] ?? "",
      pinnedChatIds: List<int>.from(
          (json['pinned_chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      includedChatIds: List<int>.from(
          (json['included_chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      excludedChatIds: List<int>.from(
          (json['excluded_chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      excludeMuted: json['exclude_muted'] ?? false,
      excludeRead: json['exclude_read'] ?? false,
      excludeArchived: json['exclude_archived'] ?? false,
      includeContacts: json['include_contacts'] ?? false,
      includeNonContacts: json['include_non_contacts'] ?? false,
      includeBots: json['include_bots'] ?? false,
      includeGroups: json['include_groups'] ?? false,
      includeChannels: json['include_channels'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "icon_name": this.iconName,
      "pinned_chat_ids": this.pinnedChatIds.map((i) => i).toList(),
      "included_chat_ids": this.includedChatIds.map((i) => i).toList(),
      "excluded_chat_ids": this.excludedChatIds.map((i) => i).toList(),
      "exclude_muted": this.excludeMuted,
      "exclude_read": this.excludeRead,
      "exclude_archived": this.excludeArchived,
      "include_contacts": this.includeContacts,
      "include_non_contacts": this.includeNonContacts,
      "include_bots": this.includeBots,
      "include_groups": this.includeGroups,
      "include_channels": this.includeChannels,
    };
  }

  static const CONSTRUCTOR = 'chatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
