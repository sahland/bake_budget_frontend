import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  final double fontSize;

  const AppBarTitle({
    required this.title,
    this.fontSize = 24,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      title,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
