import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String userName;
  final String firstName;
  final String lastName;

  UserModel(
      {@required this.id,
      @required this.userName,
      @required this.firstName,
      @required this.lastName});
}
