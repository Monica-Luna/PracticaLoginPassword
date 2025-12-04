import 'package:flutter/cupertino.dart';




class UserProvider extends ChangeNotifier {
  
  List<User> listUsers = [];
  Future<void> getUsers() async {
    listUsers = await GetUserspass().getUsers();
    notifyListeners();
  }

}
