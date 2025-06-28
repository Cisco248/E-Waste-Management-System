class AppValidationMessages {
  const AppValidationMessages._();

  static const String requiredField = 'This field is required.';
  static const String invalidEmail = 'Please enter a valid email address.';
  static const String passwordTooShort =
      'Password must be at least 6 characters.';
  static const String confirmPasswordMismatch = 'Passwords do not match.';
}
