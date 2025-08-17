import 'package:e_wms_mobile/constants/auth.dart';

class UserStore {
  final Map<String, String> _users = {};

  bool emailExists(String email) => _users.containsKey(email);

  Future<void> createUser(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (emailExists(email)) {
      throw AuthException('Email already registered');
    }
    _users[email] = password;
  }

  Future<User> signIn(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (!_users.containsKey(email) || _users[email] != password) {
      throw AuthException('Invalid email or password');
    }
    return User(email, password);
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
  @override
  String toString() => message;
}
