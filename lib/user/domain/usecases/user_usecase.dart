import 'package:testing_app/user/domain/entitles/user.dart';
import 'package:testing_app/user/domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepo _userrepo;

  UserUseCase(this._userrepo);

  Future<User> getUser() {
    print("pass User usecase");
    return _userrepo.getUser();
  }

  Future<void> createUser(User user) async {
    return _userrepo.createUser(user: user);
  }

  Future<void> deleteUser(User user) async {
    return _userrepo.deletUser(user: user);
  }
}
