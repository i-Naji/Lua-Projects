part of 'tdapi.dart';

class TdObject {
  static const CONSTRUCTOR = 'object';
  dynamic extra;
  TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson() {
    return {};
  }

  String getConstructor() => CONSTRUCTOR;
}
