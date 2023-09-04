import 'package:flutter/foundation.dart';
import 'package:testing_app/http/http.dart';
import 'package:testing_app/user/data/models/user_model.dart';
import 'package:testing_app/user/domain/entitles/user.dart';

class ApiService {
  Future<void> createUser({required User user}) async {
    await Future.delayed(const Duration(seconds: 5));
    if (kDebugMode) {
      print("Pass createUser");
    }
  }

  Future<void> deleteUser({required User user}) async {
    await Future.delayed(const Duration(seconds: 5));
    if (kDebugMode) {
      print("Pass deleteUser");
    }
  }

  Future<UserModel?> getUser() async {
    final reponse =
        await Http.get("https://jsonplaceholder.typicode.com/todos/6");
    if (reponse.statusCode == 200) {
      if (kDebugMode) {
        print("pass get user");
        print(reponse.data);
      }
      return UserModel.fromJson(reponse.data);
    }
    return null;
  }
}
