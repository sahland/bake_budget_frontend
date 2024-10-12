import 'package:flutter/material.dart';

class BaseTextButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double fontSize;

  const BaseTextButton(
      {required this.title, this.onPressed, this.fontSize = 18, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onPressed ?? () {},
      child: Text(
        title,
        style: TextStyle(
            color: theme.primaryColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
