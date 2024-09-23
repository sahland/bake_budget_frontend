import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsDropdown extends StatefulWidget {
  final List<String> productsList;

  final double iconSize;
  final double verticalPadding;
  final double horizontalPadding;

  const ProductsDropdown({
    required this.productsList,
    this.iconSize = 35,
    this.verticalPadding = 10,
    this.horizontalPadding = 20,
    super.key,
  });

  @override
  State<ProductsDropdown> createState() => _ProductsDropdownState();
}

class _ProductsDropdownState extends State<ProductsDropdown> {
  @override
  Widget build(BuildContext context) {
    const title = 'Выберите изделие (1000 гр.)';

    final theme = Theme.of(context);

    String? dropdownValue;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: DropdownButtonFormField(
        icon: _downIcon(theme),
        iconSize: widget.iconSize,
        decoration: _dropdownDecoration(theme),
        hint: const Text(
          title,
        ),
        style: _dropdownTextStyle(theme),
        dropdownColor: theme.cardColor,
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() => dropdownValue = newValue!);
        },
        items:
            widget.productsList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: _dropdownTextStyle(theme),
            ),
          );
        }).toList(),
      ),
    );
  }

  Icon _downIcon(ThemeData theme) {
    return Icon(
      Icons.keyboard_arrow_down_rounded,
      color: theme.secondaryHeaderColor,
    );
  }

  TextStyle _dropdownTextStyle(ThemeData theme, [double fontSize = 15]) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
    );
  }

  InputDecoration _dropdownDecoration(ThemeData theme) {
    return InputDecoration(
      fillColor: theme.dialogBackgroundColor,
      filled: true,
      hintStyle: _dropdownTextStyle(theme),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: theme.dialogBackgroundColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: theme.dialogBackgroundColor,
        ),
      ),
    );
  }
}
