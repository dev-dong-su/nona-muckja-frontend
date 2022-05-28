import 'package:nonamukja/model/login_model.dart';

class UserLoginRepository {
  LoginModel setUserLoginRepository(String userName, String password) {
    return LoginModel.fromJson({
      'username': userName,
      'password': password,
    });
  }
}
