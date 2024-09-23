import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseSearchField extends StatelessWidget {
  final String title;

  final double horizontalPadding;
  final double verticalPadding;

  const BaseSearchField({
    required this.title,
    this.horizontalPadding = 16,
    this.verticalPadding = 5,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const sizedBoxHeight = 25.0;

    return Column(
      children: [
        const SizedBox(height: sizedBoxHeight),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: _buildSearchContainer(context),
        ),
      ],
    );
  }

  // Метод для создания контейнера с полем поиска
  Widget _buildSearchContainer(
    BuildContext context, [
    double height = 75,
    double horizontalPadding = 10,
  ]) {
    const sizedBoxWidth = 10.0;

    final theme = Theme.of(context);

    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      decoration: _buildBoxDecoration(theme),
      child: Row(
        children: [
          const SizedBox(width: sizedBoxWidth),
          _buildSearchIcon(theme),
          _buildSearchField(theme),
        ],
      ),
    );
  }

  // Метод для создания иконки поиска
  Widget _buildSearchIcon(ThemeData theme) {
    return Icon(
      Icons.search_rounded,
      color: theme.secondaryHeaderColor,
    );
  }

  // Метод для создания текстового поля поиска
  Widget _buildSearchField(ThemeData theme) {
    const horizontalPadding = 5.0;

    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: _buildSearchText(theme),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
        style: _buildSearchText(theme),
      ),
    );
  }

  // Метод для создания BoxDecoration с тенью
  BoxDecoration _buildBoxDecoration(
    ThemeData theme, [
    double borderRadius = 15,
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

  // Метод для создания стиля текста в подсказке
  TextStyle _buildSearchText(
    ThemeData theme, [
    double fontSize = 16,
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
