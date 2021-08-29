//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Language {
  /// Returns a new [Language] instance.
  Language({
    @required this.uid,
    this.code,
    @required this.displayName,
  });

  String uid;

  String code;

  String displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Language &&
     other.uid == uid &&
     other.code == code &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    (uid == null ? 0 : uid.hashCode) +
    (code == null ? 0 : code.hashCode) +
    (displayName == null ? 0 : displayName.hashCode);

  @override
  String toString() => 'Language[uid=$uid, code=$code, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uid'] = uid;
    if (code != null) {
      json[r'code'] = code;
    }
      json[r'display_name'] = displayName;
    return json;
  }

  /// Returns a new [Language] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Language fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Language(
        uid: json[r'uid'],
        code: json[r'code'],
        displayName: json[r'display_name'],
    );

  static List<Language> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Language>[]
      : json.map((dynamic value) => Language.fromJson(value)).toList(growable: true == growable);

  static Map<String, Language> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Language>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Language.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Language-objects as value to a dart map
  static Map<String, List<Language>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Language>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Language.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

