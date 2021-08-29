//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthResponse {
  /// Returns a new [AuthResponse] instance.
  AuthResponse({
    @required this.ok,
    this.errors = const [],
    this.user,
    this.token,
    this.redirect,
  });

  bool ok;

  List<String> errors;

  User user;

  /// Use it as api_token
  String token;

  /// (only for js-api)
  String redirect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthResponse &&
     other.ok == ok &&
     other.errors == errors &&
     other.user == user &&
     other.token == token &&
     other.redirect == redirect;

  @override
  int get hashCode =>
    (ok == null ? 0 : ok.hashCode) +
    (errors == null ? 0 : errors.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (token == null ? 0 : token.hashCode) +
    (redirect == null ? 0 : redirect.hashCode);

  @override
  String toString() => 'AuthResponse[ok=$ok, errors=$errors, user=$user, token=$token, redirect=$redirect]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ok'] = ok;
    if (errors != null) {
      json[r'errors'] = errors;
    }
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

  /// Returns a new [AuthResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AuthResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AuthResponse(
        ok: json[r'ok'],
        errors: json[r'errors'] == null
          ? null
          : (json[r'errors'] as List).cast<String>(),
        user: User.fromJson(json[r'user']),
        token: json[r'token'],
        redirect: json[r'redirect'],
    );

  static List<AuthResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AuthResponse>[]
      : json.map((dynamic value) => AuthResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, AuthResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AuthResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = AuthResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AuthResponse-objects as value to a dart map
  static Map<String, List<AuthResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AuthResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = AuthResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

