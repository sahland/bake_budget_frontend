import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.theme,
    required this.title,
  });

  final ThemeData theme;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}