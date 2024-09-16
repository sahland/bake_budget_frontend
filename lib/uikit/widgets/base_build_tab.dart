import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseBuildTab extends StatelessWidget {
  final int index;
  final String text;
  final bool isActive;
  final double fontSize;
  final VoidCallback? onTap;

  const BaseBuildTab({
    required this.index,
    required this.text,
    required this.isActive,
    required this.fontSize,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 10.0;
    const horizontalPadding = 25.0;
    const borderSideWidth = 2.0;
    const textOpacity = 0.5;

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        decoration: BoxDecoration(
          border: isActive
              ? Border(
                  bottom: BorderSide(
                    width: borderSideWidth,
                    color: theme.primaryColor,
                  ),
                )
              : null,
        ),
        child: Text(
          text,
          style: GoogleFonts.lato(
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
            color: isActive
                ? theme.primaryColor
                : theme.primaryColor.withOpacity(
                    textOpacity,
                  ),
          ),
        ),
      ),
    );
  }
}
