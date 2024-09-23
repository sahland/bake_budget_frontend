import 'package:flutter/material.dart';

class BaseCheckbox extends StatelessWidget {
  final String title;
  final int index;
  final double fontSize;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const BaseCheckbox({
    required this.title,
    required this.index,
    required this.isSelected,
    required this.onChanged,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
      value: isSelected,
      onChanged: onChanged,
      activeColor: theme.primaryColor,
      checkColor: theme.secondaryHeaderColor,
      side: BorderSide(color: theme.secondaryHeaderColor),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
