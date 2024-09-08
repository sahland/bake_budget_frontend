import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsDropdown extends StatefulWidget {
  final List<String> productsList;

  const ProductsDropdown({
    super.key,
    required this.productsList,
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
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: DropdownButtonFormField(
        icon: _downIcon(theme),
        iconSize: 35,
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

  TextStyle _dropdownTextStyle(ThemeData theme) {
    return GoogleFonts.poppins(
      color: theme.secondaryHeaderColor,
      fontSize: 16,
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
