import 'package:flutter/material.dart';

class BaseElevatedButton extends StatefulWidget {
  final String title;

  final double fontSize;
  final double borderRadius;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  const BaseElevatedButton({
    required this.title,
    this.fontSize = 16,
    this.borderRadius = 30,
    this.width = 120,
    this.height = 48,
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        backgroundColor: theme.primaryColor,
        elevation: elevation,
        minimumSize: Size(widget.width, widget.height),
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
