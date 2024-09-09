import 'package:flutter/material.dart';

class BaseElevatedButton extends StatefulWidget {
  final String title;
  final VoidCallback? onPressed;
  const BaseElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  State<BaseElevatedButton> createState() => _BaseElevatedButtonState();
}

class _BaseElevatedButtonState extends State<BaseElevatedButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: widget.onPressed ?? () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: theme.primaryColor, elevation: 10),
      child: Text(
        widget.title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
