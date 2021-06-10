part of '../tdapi.dart';

class NetworkType extends TdObject {
  /// Represents the type of a network
  NetworkType();

  /// a NetworkType return type can be :
  /// * NetworkTypeNone
  /// * NetworkTypeMobile
  /// * NetworkTypeMobileRoaming
  /// * NetworkTypeWiFi
  /// * NetworkTypeOther
  factory NetworkType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NetworkTypeNone.CONSTRUCTOR:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.CONSTRUCTOR:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.CONSTRUCTOR:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.CONSTRUCTOR:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.CONSTRUCTOR:
        return NetworkTypeOther.fromJson(json);
      default:
        return NetworkType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'networkType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeNone extends NetworkType {
  /// The network is not available
  NetworkTypeNone();

  /// Parse from a json
  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) {
    return NetworkTypeNone();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'networkTypeNone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobile extends NetworkType {
  /// A mobile network
  NetworkTypeMobile();

  /// Parse from a json
  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) {
    return NetworkTypeMobile();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'networkTypeMobile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeMobileRoaming extends NetworkType {
  /// A mobile roaming network
  NetworkTypeMobileRoaming();

  /// Parse from a json
  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) {
    return NetworkTypeMobileRoaming();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'networkTypeMobileRoaming';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeWiFi extends NetworkType {
  /// A Wi-Fi network
  NetworkTypeWiFi();

  /// Parse from a json
  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) {
    return NetworkTypeWiFi();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'networkTypeWiFi';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkTypeOther extends NetworkType {
  /// A different network type (e.g., Ethernet network)
  NetworkTypeOther();

  /// Parse from a json
  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) {
    return NetworkTypeOther();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'networkTypeOther';

  @override
  String getConstructor() => CONSTRUCTOR;
}
