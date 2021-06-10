part of 'tdapi.dart';

TdObject convertToObject(String? query) {
  if (query == null) {
    return TdObject();
  }
  final newJson = json.decode(query);
  final fromJson = allObjects[newJson['@type']];
  if (fromJson == null) {
    return TdObject();
  }
  return fromJson(newJson);
}
