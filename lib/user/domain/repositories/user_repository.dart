import 'package:testing_app/user/domain/entitles/user.dart';

abstract class UserRepo {
  Future<void> createUser({required User user});
  Future<void> deletUser({required User user});
  Future<User> getUser();
}
