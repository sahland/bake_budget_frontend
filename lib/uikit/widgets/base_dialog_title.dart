import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseDialogTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  

  const BaseDialogTitle({
    required this.title,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w400,
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
        fontWeight: fontWeight,
      ),
    );
  }
}