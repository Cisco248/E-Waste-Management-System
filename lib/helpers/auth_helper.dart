import 'package:e_wms_mobile/constants/auth.dart';
import 'package:e_wms_mobile/constants/text.dart';

class UserStore {

  final Map<String, String> _users = {};

  bool emailExists(String inputEmail) {
    return email == inputEmail;
  }

  bool login(String inputEmail, String inputPassword) {
    return email == inputEmail && password == inputPassword;
  }

  Future<void> createUser(
    String inputEmail, 
    String inputPassword, 
    String? confirmPassword, 
    String? firstName, 
    String? lastName, 
    int? mobileNum,
    ) async {
      try {
        await Future.delayed(const Duration(milliseconds: 500));
        if (emailExists(inputEmail)) {
          throw AuthException(emailExistsText);
        } 
        else {
          _users['email'] = inputEmail;
          _users['password'] = inputPassword;
        }
      } catch (e) {
        throw AuthException(loginError);
      }
  }

  void logOut(String inputEmail) {
    if (email == inputEmail) {
      email = '';
    }
    else {
      throw AuthException(logOutError);
    }
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
  
  @override
  String toString() => message;
}
