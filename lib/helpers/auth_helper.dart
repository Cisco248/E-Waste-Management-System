import 'package:e_wms_mobile/constants/database.dart';

class Auth {
  String _email = AuthTest.email;
  String _password = AuthTest.password;

  void register(String username, String password) {
    _email = username;
    _password = password;
  }

  bool login(String username, String password) {
    return _email == username && _password == password;
  }

  // bool get isUserRegistered => _email != null && _password != null;

  bool logout() {
    return _email == '' && _password == '';
  }
}
