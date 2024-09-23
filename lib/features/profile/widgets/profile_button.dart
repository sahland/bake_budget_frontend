import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String title;

  final double fontSize;
  final double width;
  final double height;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final VoidCallback? onPressed;

  const ProfileButton(
      {required this.title,
      this.fontSize = 18,
      this.width = 250,
      this.height = 60,
      this.verticalPadding = 5,
      this.horizontalPadding = 10,
      this.borderRadius = 25,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    const elevation = 10.0;

    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.cardColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.zero,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                color: theme.secondaryHeaderColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
