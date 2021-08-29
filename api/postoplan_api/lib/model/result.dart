//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Result {
  /// Returns a new [Result] instance.
  Result({
    @required this.ok,
    this.errors = const [],
  });

  bool ok;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Result &&
     other.ok == ok &&
     other.errors == errors;

  @override
  int get hashCode =>
    (ok == null ? 0 : ok.hashCode) +
    (errors == null ? 0 : errors.hashCode);

  @override
  String toString() => 'Result[ok=$ok, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ok'] = ok;
    if (errors != null) {
      json[r'errors'] = errors;
    }
    return json;
  }

  /// Returns a new [Result] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Result fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Result(
        ok: json[r'ok'],
        errors: json[r'errors'] == null
          ? null
          : (json[r'errors'] as List).cast<String>(),
    );

  static List<Result> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Result>[]
      : json.map((dynamic value) => Result.fromJson(value)).toList(growable: true == growable);

  static Map<String, Result> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Result>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Result.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Result-objects as value to a dart map
  static Map<String, List<Result>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Result>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Result.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

