import 'package:dio/dio.dart';
import 'package:practica_login_password/domain/entities/user.dart';
import 'package:practica_login_password/infraestructure/models/users_models.dart';


class GetUserspass {
  final _dio = Dio();

  Future<List<User>> getUsers() async {
    final response = await _dio.get(
      'https://script.google.com/macros/s/AKfycbxMnPE5VBVapJT8DHOV1D99g-vnbv2IfUGO6YnN9vaL7S9gkDo27z5hQpZbKX40yoni/exec?spreadsheetId=1PLB7nqma_bGMF3eveUGUOsQdgngFJZbj7eSFutunCNE&sheet=users',
    );

    List<User> listUsers = [];

    if (response.statusCode == 200) {
      //UserModel.fromJson(response.data)
      final List<UserModel> listUsersModel = userModelFromJson(response.data);
      listUsers = listUsersModel
          .map((userModel) => userModel.toUserEntity())
          .toList();
    } else {
      return [];
    }

    //final resUsersModel = UsersModel.fromJson(response.data.first);

    return listUsers;
  }
}
