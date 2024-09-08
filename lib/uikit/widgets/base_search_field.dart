import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseSearchField extends StatelessWidget {
  final String title;

  const BaseSearchField({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: _buildSearchContainer(context),
        ),
      ],
    );
  }

  // Метод для создания контейнера с полем поиска
  Widget _buildSearchContainer(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 75, // Фиксированная высота контейнера
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: _buildBoxDecoration(theme),
      child: Row(
        children: [
          const SizedBox(width: 10),
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
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle: _buildHintTextStyle(theme),
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
        style: _buildTextStyle(theme),
      ),
    );
  }

  // Метод для создания BoxDecoration с тенью
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

  // Метод для создания стиля текста в подсказке
  TextStyle _buildHintTextStyle(ThemeData theme) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
    );
  }

  // Метод для создания стиля текста в поле ввода
  TextStyle _buildTextStyle(ThemeData theme) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.1,
    );
  }
}
