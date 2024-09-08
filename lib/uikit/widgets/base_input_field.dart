import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseInputField extends StatelessWidget {
  final String title;

  const BaseInputField({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: _buildBoxDecoration(theme),
        child: Row(
          children: [
            const SizedBox(width: 10),
            _buildPenIcon(theme),
            const SizedBox(width: 10),
            _buildParamField(theme, title),
          ],
        ),
      ),
    );
  }

  Widget _buildParamField(ThemeData theme, String title) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: _buildHintTextStyle(theme),
          border: InputBorder.none,
        ),
        style: _buildHintTextStyle(theme),
      ),
    );
  }

  Widget _buildPenIcon(ThemeData theme) {
    return SvgPicture.asset(
      './assets/icons/pen_icon.svg',
      color: theme.secondaryHeaderColor,
    );
  }

  BoxDecoration _buildBoxDecoration(ThemeData theme) {
    return BoxDecoration(
      color: theme.dialogBackgroundColor,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  TextStyle _buildHintTextStyle(ThemeData theme) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
    );
  }
}
