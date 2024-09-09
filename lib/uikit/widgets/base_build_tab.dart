import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseBuildTab extends StatelessWidget {
  final int index;
  final String text;
  final bool isActive;
  final VoidCallback? onTap;

  const BaseBuildTab({
    super.key,
    required this.index,
    required this.text,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        decoration: BoxDecoration(
          border: isActive
              ? Border(
                  bottom: BorderSide(width: 2.0, color: theme.primaryColor),
                )
              : null,
        ),
        child: Text(
          text,
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: isActive
                ? theme.primaryColor
                : theme.primaryColor.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
