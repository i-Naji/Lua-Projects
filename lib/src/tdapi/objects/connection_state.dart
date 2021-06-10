part of '../tdapi.dart';

class ConnectionState extends TdObject {
  /// Describes the current state of the connection to Telegram servers
  ConnectionState();

  /// a ConnectionState return type can be :
  /// * ConnectionStateWaitingForNetwork
  /// * ConnectionStateConnectingToProxy
  /// * ConnectionStateConnecting
  /// * ConnectionStateUpdating
  /// * ConnectionStateReady
  factory ConnectionState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      default:
        return ConnectionState();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'connectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateWaitingForNetwork extends ConnectionState {
  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type
  ConnectionStateWaitingForNetwork();

  /// Parse from a json
  factory ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json) {
    return ConnectionStateWaitingForNetwork();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'connectionStateWaitingForNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnectingToProxy extends ConnectionState {
  /// Currently establishing a connection with a proxy server
  ConnectionStateConnectingToProxy();

  /// Parse from a json
  factory ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json) {
    return ConnectionStateConnectingToProxy();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'connectionStateConnectingToProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnecting extends ConnectionState {
  /// Currently establishing a connection to the Telegram servers
  ConnectionStateConnecting();

  /// Parse from a json
  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) {
    return ConnectionStateConnecting();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'connectionStateConnecting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateUpdating extends ConnectionState {
  /// Downloading data received while the application was offline
  ConnectionStateUpdating();

  /// Parse from a json
  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) {
    return ConnectionStateUpdating();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'connectionStateUpdating';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateReady extends ConnectionState {
  /// There is a working connection to the Telegram servers
  ConnectionStateReady();

  /// Parse from a json
  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) {
    return ConnectionStateReady();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'connectionStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}
