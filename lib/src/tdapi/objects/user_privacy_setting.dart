part of '../tdapi.dart';

class UserPrivacySetting extends TdObject {
  /// Describes available user privacy settings
  UserPrivacySetting();

  /// a UserPrivacySetting return type can be :
  /// * UserPrivacySettingShowStatus
  /// * UserPrivacySettingShowProfilePhoto
  /// * UserPrivacySettingShowLinkInForwardedMessages
  /// * UserPrivacySettingShowPhoneNumber
  /// * UserPrivacySettingAllowChatInvites
  /// * UserPrivacySettingAllowCalls
  /// * UserPrivacySettingAllowPeerToPeerCalls
  /// * UserPrivacySettingAllowFindingByPhoneNumber
  factory UserPrivacySetting.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      default:
        return UserPrivacySetting();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'userPrivacySetting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowStatus extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's online status is visible
  UserPrivacySettingShowStatus();

  /// Parse from a json
  factory UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json) {
    return UserPrivacySettingShowStatus();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's profile photo is visible
  UserPrivacySettingShowProfilePhoto();

  /// Parse from a json
  factory UserPrivacySettingShowProfilePhoto.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingShowProfilePhoto();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
  UserPrivacySettingShowLinkInForwardedMessages();

  /// Parse from a json
  factory UserPrivacySettingShowLinkInForwardedMessages.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingShowLinkInForwardedMessages();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  /// A privacy setting for managing whether the user's phone number is visible
  UserPrivacySettingShowPhoneNumber();

  /// Parse from a json
  factory UserPrivacySettingShowPhoneNumber.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingShowPhoneNumber();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingShowPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be invited to chats
  UserPrivacySettingAllowChatInvites();

  /// Parse from a json
  factory UserPrivacySettingAllowChatInvites.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingAllowChatInvites();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be called
  UserPrivacySettingAllowCalls();

  /// Parse from a json
  factory UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json) {
    return UserPrivacySettingAllowCalls();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  /// A privacy setting for managing whether peer-to-peer connections can be used for calls
  UserPrivacySettingAllowPeerToPeerCalls();

  /// Parse from a json
  factory UserPrivacySettingAllowPeerToPeerCalls.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingAllowPeerToPeerCalls();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  /// A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all"
  UserPrivacySettingAllowFindingByPhoneNumber();

  /// Parse from a json
  factory UserPrivacySettingAllowFindingByPhoneNumber.fromJson(
      Map<String, dynamic> json) {
    return UserPrivacySettingAllowFindingByPhoneNumber();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
