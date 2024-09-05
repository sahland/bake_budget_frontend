import 'package:flutter/material.dart';

class BaseLongButton extends StatefulWidget {
  final dynamic onPressed;
  final String title;
  final double width;
  final double height;

  const BaseLongButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.width,
      required this.height});

  @override
  State<BaseLongButton> createState() => _BaseLongButtonState();
}

class _BaseLongButtonState extends State<BaseLongButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.dialogBackgroundColor,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: widget.onPressed,
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
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
