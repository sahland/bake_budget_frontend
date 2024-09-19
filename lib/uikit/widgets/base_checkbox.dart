import 'package:flutter/material.dart';

class BaseCheckbox extends StatefulWidget {
  final String title;
  final int index;
  final double fontSize;

  const BaseCheckbox({
    required this.title,
    required this.index,
    this.fontSize = 16,
    super.key,
  });

  @override
  State<BaseCheckbox> createState() => _BaseCheckboxState();
}

class _BaseCheckboxState extends State<BaseCheckbox> {
  @override
  Widget build(BuildContext context) {
    int _selectedValue = 0;

    const checkboxBorderRadius = 10.0;
    final theme = Theme.of(context);

    return CheckboxListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
      checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        checkboxBorderRadius,
      )),
      value: _selectedValue == widget.index,
      onChanged: (value) {
        setState(() {
          if (value!) {
            _selectedValue = widget.index;
          }
        });
      },
    );
  }
}
