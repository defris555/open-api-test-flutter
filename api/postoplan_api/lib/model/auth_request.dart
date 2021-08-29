//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthRequest {
  /// Returns a new [AuthRequest] instance.
  AuthRequest({
    @required this.login,
    @required this.password,
  });

  /// E-mail or username
  String login;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthRequest &&
     other.login == login &&
     other.password == password;

  @override
  int get hashCode =>
    (login == null ? 0 : login.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'AuthRequest[login=$login, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'login'] = login;
      json[r'password'] = password;
    return json;
  }

  /// Returns a new [AuthRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthRequest(
        login: json[r'login'],
        password: json[r'password'],
    );

  static List<AuthRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthRequest>[]
      : json.map((dynamic value) => AuthRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthRequest-objects as value to a dart map
  static Map<String, List<AuthRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

