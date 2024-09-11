import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDialog extends StatefulWidget {
  final String title;
  const OrderDialog({
    super.key,
    required this.title,
  });

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  @override
  Widget build(BuildContext context) {
    const status = 'Статус заказа';

    int _selectedValue = 0;
    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: theme.cardColor,
      insetPadding: const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 20,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.pacifico(
                color: theme.secondaryHeaderColor,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              status,
              style: GoogleFonts.pacifico(
                color: theme.secondaryHeaderColor.withOpacity(0.8),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            _orderCheckbox(
              'Не начат',
              _selectedValue,
              1,
              theme,
            ),
            _orderCheckbox(
              'В процессе',
              _selectedValue,
              2,
              theme,
            ),
            _orderCheckbox(
              'Завершен',
              _selectedValue,
              3,
              theme,
            ),
            _orderCheckbox(
              'Отменен',
              _selectedValue,
              4,
              theme,
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderCheckbox(
      String title, int selectedValue, int index, ThemeData theme) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      checkboxShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      value: selectedValue == index,
      onChanged: (value) {
        setState(() {
          if (value!) {
            selectedValue = index;
          }
        });
      },
    );
  }
}
