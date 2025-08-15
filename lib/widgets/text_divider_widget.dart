import 'package:flutter/material.dart';

class TextDividerWidget extends StatelessWidget {
  final String text;
  const TextDividerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.directional(-0.9, 1),
      child: Text(text, style: TextStyle(fontSize: 20)),
    );
  }
}
