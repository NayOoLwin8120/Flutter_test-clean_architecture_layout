import 'package:testing_app/user/data/data_sources/api_service.dart';
import 'package:testing_app/user/domain/entitles/user.dart';
import 'package:testing_app/user/domain/repositories/user_repository.dart';

class UserRepoImpl implements UserRepo {
  late final ApiService _apiService;
  UserRepoImpl(this._apiService);

  @override
  Future<void> createUser({required User user}) async {
    _apiService.createUser(user: user);
  }

  @override
  Future<void> deletUser({required User user}) async {
    _apiService.deleteUser(user: user);
  }

  @override
  Future<User> getUser() async {

    final user = await _apiService.getUser();
    
    if (user == null) {
      throw "There is an error to get user";
    }
    return user;
  }
}
