//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthResponseAllOf {
  /// Returns a new [AuthResponseAllOf] instance.
  AuthResponseAllOf({
    this.user,
    this.token,
    this.redirect,
  });

  User user;

  /// Use it as api_token
  String token;

  /// (only for js-api)
  String redirect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthResponseAllOf &&
     other.user == user &&
     other.token == token &&
     other.redirect == redirect;

  @override
  int get hashCode =>
    (user == null ? 0 : user.hashCode) +
    (token == null ? 0 : token.hashCode) +
    (redirect == null ? 0 : redirect.hashCode);

  @override
  String toString() => 'AuthResponseAllOf[user=$user, token=$token, redirect=$redirect]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (user != null) {
      json[r'user'] = user;
    }
    if (token != null) {
      json[r'token'] = token;
    }
    if (redirect != null) {
      json[r'redirect'] = redirect;
    }
    return json;
  }

  /// Returns a new [AuthResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthResponseAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthResponseAllOf(
        user: User.fromJson(json[r'user']),
        token: json[r'token'],
        redirect: json[r'redirect'],
    );

  static List<AuthResponseAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthResponseAllOf>[]
      : json.map((dynamic value) => AuthResponseAllOf.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthResponseAllOf>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthResponseAllOf-objects as value to a dart map
  static Map<String, List<AuthResponseAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthResponseAllOf>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthResponseAllOf.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

