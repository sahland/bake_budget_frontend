import 'package:flutter/material.dart';

class BaseElevatedButton extends StatefulWidget {
  final String title;

  final double fontSize;
  final VoidCallback? onPressed;

  const BaseElevatedButton({
    required this.title,
    this.fontSize = 16,
    this.onPressed,
    super.key,
  });

  @override
  State<BaseElevatedButton> createState() => _BaseElevatedButtonState();
}

class _BaseElevatedButtonState extends State<BaseElevatedButton> {
  @override
  Widget build(BuildContext context) {
    const elevation = 10.0;

    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: widget.onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor,
        elevation: elevation,
      ),
      child: Text(
        widget.title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
