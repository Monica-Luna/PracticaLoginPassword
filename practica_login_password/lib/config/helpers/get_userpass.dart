import 'package:dio/dio.dart';


class GetUserspass {
  final _dio = Dio();

  Future<List<User>> getUsers() async {
    //final dio = Dio();
    final response = await _dio.get(
      'https://script.google.com/macros/s/AKfycbwh_ncpAVYm9WmEJRegUnCNz2h8cV_-PxYvSdh-tHh8Iadq6w_ef1YTQueKFqSGb_Kv/exec?spreadsheetId=1hp5ggeKgA2wzvNtP4XUynPeIbferwx-hUBniNswWB0Q&sheet=users',
    );

    List<User> listUsers = [];

    if (response.statusCode != 200) {
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
