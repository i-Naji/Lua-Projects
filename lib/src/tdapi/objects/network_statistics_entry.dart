part of '../tdapi.dart';

class NetworkStatisticsEntry extends TdObject {
  /// Contains statistics about network usage
  NetworkStatisticsEntry();

  /// a NetworkStatisticsEntry return type can be :
  /// * NetworkStatisticsEntryFile
  /// * NetworkStatisticsEntryCall
  factory NetworkStatisticsEntry.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NetworkStatisticsEntryFile.CONSTRUCTOR:
        return NetworkStatisticsEntryFile.fromJson(json);
      case NetworkStatisticsEntryCall.CONSTRUCTOR:
        return NetworkStatisticsEntryCall.fromJson(json);
      default:
        return NetworkStatisticsEntry();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'networkStatisticsEntry';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  /// Contains information about the total amount of data that was used to send and receive files
  NetworkStatisticsEntryFile(
      {required this.fileType,
      required this.networkType,
      required this.sentBytes,
      required this.receivedBytes});

  /// [fileType] Type of the file the data is part of
  FileType fileType;

  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  int sentBytes;

  /// [receivedBytes] Total number of bytes received
  int receivedBytes;

  /// Parse from a json
  factory NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) {
    return NetworkStatisticsEntryFile(
      fileType: FileType.fromJson(json['file_type'] ?? <String, dynamic>{}),
      networkType:
          NetworkType.fromJson(json['network_type'] ?? <String, dynamic>{}),
      sentBytes: json['sent_bytes'] ?? 0,
      receivedBytes: json['received_bytes'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_type": this.fileType.toJson(),
      "network_type": this.networkType.toJson(),
      "sent_bytes": this.sentBytes,
      "received_bytes": this.receivedBytes,
    };
  }

  static const CONSTRUCTOR = 'networkStatisticsEntryFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  /// Contains information about the total amount of data that was used for calls
  NetworkStatisticsEntryCall(
      {required this.networkType,
      required this.sentBytes,
      required this.receivedBytes,
      required this.duration});

  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  int sentBytes;

  /// [receivedBytes] Total number of bytes received
  int receivedBytes;

  /// [duration] Total call duration, in seconds
  double duration;

  /// Parse from a json
  factory NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) {
    return NetworkStatisticsEntryCall(
      networkType:
          NetworkType.fromJson(json['network_type'] ?? <String, dynamic>{}),
      sentBytes: json['sent_bytes'] ?? 0,
      receivedBytes: json['received_bytes'] ?? 0,
      duration: json['duration'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "network_type": this.networkType.toJson(),
      "sent_bytes": this.sentBytes,
      "received_bytes": this.receivedBytes,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'networkStatisticsEntryCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
