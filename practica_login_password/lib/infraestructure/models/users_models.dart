import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
    final String id;
    final String user;
    final String pass;

    UserModel({
        required this.id,
        required this.user,
        required this.pass,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        user: json["user"],
        pass: json["pass"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "pass": pass,
    };

    User toUserEntity() => User(id: id, username: user, password: pass);
}

  
