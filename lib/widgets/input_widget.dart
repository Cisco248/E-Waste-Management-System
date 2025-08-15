import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final String hintText;
  final String errorText;
  const AppInputField({
    super.key,
    required this.hintText,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText, errorText: errorText),
    );
  }
}
