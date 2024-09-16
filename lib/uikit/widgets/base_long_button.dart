import 'package:flutter/material.dart';

class BaseLongButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String title;
  final double width;
  final double height;
  final double fontSize;
  final double borderRadius;

  const BaseLongButton({
    required this.onPressed,
    required this.title,
    this.width = 370,
    this.height = 65,
    this.fontSize = 18,
    this.borderRadius = 5,
    super.key,
  });

  @override
  State<BaseLongButton> createState() => _BaseLongButtonState();
}

class _BaseLongButtonState extends State<BaseLongButton> {
  @override
  Widget build(BuildContext context) {
    const verticalPadding = 5.0;
    const horizontalPadding = 10.0;
    const elevation = 10.0;

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.dialogBackgroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              widget.borderRadius,
            ),
          ),
        ),
        onPressed: widget.onPressed ?? () {},
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: EdgeInsets.zero,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: TextStyle(
                color: theme.secondaryHeaderColor,
                fontSize: widget.fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
