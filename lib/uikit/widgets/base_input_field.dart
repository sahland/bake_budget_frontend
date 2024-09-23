import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseInputField extends StatelessWidget {
  final String title;

  final double width;
  final double height;
  final double fontSize;
  final double borderRadius;
  final String svgImagePath;

  const BaseInputField({
    required this.title,
    this.width = double.infinity,
    this.height = 60,
    this.fontSize = 16,
    this.borderRadius = 15,
    this.svgImagePath = './assets/icons/pen_icon.svg',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const verticalPadding = 8.0;
    const sizedBoxWidth = 10.0;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: verticalPadding),
      child: Container(
        width: width,
        height: height,
        decoration: _buildBoxDecoration(theme, borderRadius),
        child: Row(
          children: [
            const SizedBox(width: sizedBoxWidth),
            _buildPenIcon(theme, svgImagePath),
            const SizedBox(width: sizedBoxWidth),
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
          hintStyle: _buildHintTextStyle(theme, fontSize),
          border: InputBorder.none,
        ),
        style: _buildHintTextStyle(theme, fontSize),
      ),
    );
  }

  Widget _buildPenIcon(ThemeData theme, String imagePath) {
    return SvgPicture.asset(
      imagePath,
      // ignore: deprecated_member_use
      color: theme.secondaryHeaderColor,
    );
  }

  BoxDecoration _buildBoxDecoration(
    ThemeData theme,
    double borderRadius, [
    double opacity = 0.3,
  ]) {
    const blurRadius = 12.0;
    const offsetDx = 0.0;
    const offsetDy = 4.0;

    return BoxDecoration(
      color: theme.dialogBackgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(opacity),
          blurRadius: blurRadius,
          offset: const Offset(
            offsetDx,
            offsetDy,
          ),
        ),
      ],
    );
  }

  TextStyle _buildHintTextStyle(
    ThemeData theme,
    double fontSize, [
    double letterSpacing = 0.1,
  ]) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      letterSpacing: letterSpacing,
    );
  }
}
