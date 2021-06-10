part of '../tdapi.dart';

class StatisticalGraph extends TdObject {
  /// Describes a statistical graph
  StatisticalGraph();

  /// a StatisticalGraph return type can be :
  /// * StatisticalGraphData
  /// * StatisticalGraphAsync
  /// * StatisticalGraphError
  factory StatisticalGraph.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StatisticalGraphData.CONSTRUCTOR:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphAsync.CONSTRUCTOR:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphError.CONSTRUCTOR:
        return StatisticalGraphError.fromJson(json);
      default:
        return StatisticalGraph();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'statisticalGraph';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticalGraphData extends StatisticalGraph {
  /// A graph data
  StatisticalGraphData(
      {required this.jsonData, required this.zoomToken, this.extra});

  /// [jsonData] Graph data in JSON format
  String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in graph
  String zoomToken;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StatisticalGraphData.fromJson(Map<String, dynamic> json) {
    return StatisticalGraphData(
      jsonData: json['json_data'] ?? "",
      zoomToken: json['zoom_token'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json_data": this.jsonData,
      "zoom_token": this.zoomToken,
    };
  }

  static const CONSTRUCTOR = 'statisticalGraphData';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticalGraphAsync extends StatisticalGraph {
  /// The graph data to be asynchronously loaded through getStatisticalGraph
  StatisticalGraphAsync({required this.token, this.extra});

  /// [token] The token to use for data loading
  String token;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StatisticalGraphAsync.fromJson(Map<String, dynamic> json) {
    return StatisticalGraphAsync(
      token: json['token'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
    };
  }

  static const CONSTRUCTOR = 'statisticalGraphAsync';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticalGraphError extends StatisticalGraph {
  /// An error message to be shown to the user instead of the graph
  StatisticalGraphError({required this.errorMessage, this.extra});

  /// [errorMessage] The error message
  String errorMessage;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StatisticalGraphError.fromJson(Map<String, dynamic> json) {
    return StatisticalGraphError(
      errorMessage: json['error_message'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error_message": this.errorMessage,
    };
  }

  static const CONSTRUCTOR = 'statisticalGraphError';

  @override
  String getConstructor() => CONSTRUCTOR;
}
