import '../constants/database.dart';

class Auth {
  late var _email = AuthTest.email;
  late var _password = AuthTest.password;

  void register(String username, String password) {
    _email = username;
    _password = password;
  }

  bool login(String username, String password) {
    if (_email == username || _password == password) {
      return true;
    } else {
      return _email == '' && _password == "";
    }
  }

  // bool get isUserRegistered => _email != null && _password != null;

  void logout() {
    _email = "";
    _password = "";
  }
}
