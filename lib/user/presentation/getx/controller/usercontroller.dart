import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testing_app/user/data/data_sources/api_service.dart';
import 'package:testing_app/user/data/repositories/user_repo_impl.dart';
import 'package:testing_app/user/domain/entitles/user.dart';
import 'package:testing_app/user/domain/usecases/user_usecase.dart';

class UserController extends GetxController {
  late UserUseCase _userusecase;
  @override
  void onInit() {
    super.onInit();
    final apiService = ApiService();
    _userusecase = UserUseCase(UserRepoImpl(apiService));
  }

  Future<User> getUser() async {
    return _userusecase.getUser();
  }

  Future<void> createUser({required User user}) {
    return _userusecase.createUser(user);
  }

  Future<void> deleteUser({required User user}) {
    return _userusecase.deleteUser(user);
  }
}
