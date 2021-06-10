part of '../tdapi.dart';

class UserStatus extends TdObject {
  /// Describes the last time the user was online
  UserStatus();

  /// a UserStatus return type can be :
  /// * UserStatusEmpty
  /// * UserStatusOnline
  /// * UserStatusOffline
  /// * UserStatusRecently
  /// * UserStatusLastWeek
  /// * UserStatusLastMonth
  factory UserStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserStatusEmpty.CONSTRUCTOR:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.CONSTRUCTOR:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.CONSTRUCTOR:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.CONSTRUCTOR:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.CONSTRUCTOR:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.CONSTRUCTOR:
        return UserStatusLastMonth.fromJson(json);
      default:
        return UserStatus();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'userStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusEmpty extends UserStatus {
  /// The user status was never changed
  UserStatusEmpty();

  /// Parse from a json
  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) {
    return UserStatusEmpty();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userStatusEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusOnline extends UserStatus {
  /// The user is online
  UserStatusOnline({required this.expires});

  /// [expires] Point in time (Unix timestamp) when the user's online status will expire
  int expires;

  /// Parse from a json
  factory UserStatusOnline.fromJson(Map<String, dynamic> json) {
    return UserStatusOnline(
      expires: json['expires'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "expires": this.expires,
    };
  }

  static const CONSTRUCTOR = 'userStatusOnline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusOffline extends UserStatus {
  /// The user is offline
  UserStatusOffline({required this.wasOnline});

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  int wasOnline;

  /// Parse from a json
  factory UserStatusOffline.fromJson(Map<String, dynamic> json) {
    return UserStatusOffline(
      wasOnline: json['was_online'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "was_online": this.wasOnline,
    };
  }

  static const CONSTRUCTOR = 'userStatusOffline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusRecently extends UserStatus {
  /// The user was online recently
  UserStatusRecently();

  /// Parse from a json
  factory UserStatusRecently.fromJson(Map<String, dynamic> json) {
    return UserStatusRecently();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userStatusRecently';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusLastWeek extends UserStatus {
  /// The user is offline, but was online last week
  UserStatusLastWeek();

  /// Parse from a json
  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) {
    return UserStatusLastWeek();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userStatusLastWeek';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusLastMonth extends UserStatus {
  /// The user is offline, but was online last month
  UserStatusLastMonth();

  /// Parse from a json
  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) {
    return UserStatusLastMonth();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'userStatusLastMonth';

  @override
  String getConstructor() => CONSTRUCTOR;
}
