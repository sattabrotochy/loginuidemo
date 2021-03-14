import 'package:flutter/material.dart';


class UserModel{

  String firstName;
  String lastName;
  String email;
  String number;
  String password;

  UserModel({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.number,
    @required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map.addAll({
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'number': number,
    });

    return map;
  }

}