import 'package:flutter/cupertino.dart';
import 'package:practica_login_password/config/helpers/get_userpass.dart';
import 'package:practica_login_password/domain/entities/user.dart';




class UserProvider extends ChangeNotifier {
  
  List<User> listUsers = [];
  Future<void> getUsers() async {
    listUsers = await GetUserspass().getUsers();
    notifyListeners();
  }

}
