import 'dart:convert';

import 'package:practica_login_password/domain/entities/user.dart';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  final String id;
  final String username;
  final String password;
  final String photoUrl;

  UserModel({
    required this.id,
    required this.username,
    required this.password,
    required this.photoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var userModel = UserModel(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        photoUrl: json["photoUrl"],
      );
    return userModel;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": username,
        "pass": password,
        "photoUrl": photoUrl,
      };

  User toUserEntity() =>
      User(id: id, username: username, password: password, photoUrl: photoUrl);
}

  
