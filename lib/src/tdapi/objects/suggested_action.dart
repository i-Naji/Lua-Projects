part of '../tdapi.dart';

class SuggestedAction extends TdObject {
  /// Describes an action suggested to the current user
  SuggestedAction();

  /// a SuggestedAction return type can be :
  /// * SuggestedActionEnableArchiveAndMuteNewChats
  /// * SuggestedActionCheckPhoneNumber
  factory SuggestedAction.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      default:
        return SuggestedAction();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'suggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
  SuggestedActionEnableArchiveAndMuteNewChats();

  /// Parse from a json
  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(
      Map<String, dynamic> json) {
    return SuggestedActionEnableArchiveAndMuteNewChats();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  /// Suggests the user to check authorization phone number and change the phone number if it is inaccessible
  SuggestedActionCheckPhoneNumber();

  /// Parse from a json
  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) {
    return SuggestedActionCheckPhoneNumber();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'suggestedActionCheckPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
