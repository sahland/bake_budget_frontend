import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDialog extends StatefulWidget {
  final String title;
  final double verticalPadding;
  final double horizontalPadding;

  const OrderDialog({
    required this.title,
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
    super.key,
  });

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  int selectedStatusIndex = 0; // Хранение выбранного статуса

  @override
  Widget build(BuildContext context) {
    const status = 'Статус заказа';
    const notStarted = 'Не начат';
    const inProgress = 'В процессе';
    const completed = 'Завершён';
    const cancelled = 'Отменён';
    const padding = 16.0;

    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: theme.cardColor,
      insetPadding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BaseDialogTitle(title: widget.title),
            _statusText(theme, status),
            BaseCheckbox(
              title: notStarted,
              index: 0,
              isSelected: selectedStatusIndex == 0,
              onChanged: (value) {
                if (value != null && value) {
                  setState(() {
                    selectedStatusIndex = 0;
                  });
                }
              },
            ),
            BaseCheckbox(
              title: inProgress,
              index: 1,
              isSelected: selectedStatusIndex == 1,
              onChanged: (value) {
                if (value != null && value) {
                  setState(() {
                    selectedStatusIndex = 1;
                  });
                }
              },
            ),
            BaseCheckbox(
              title: completed,
              index: 2,
              isSelected: selectedStatusIndex == 2,
              onChanged: (value) {
                if (value != null && value) {
                  setState(() {
                    selectedStatusIndex = 2;
                  });
                }
              },
            ),
            BaseCheckbox(
              title: cancelled,
              index: 3,
              isSelected: selectedStatusIndex == 3,
              onChanged: (value) {
                if (value != null && value) {
                  setState(() {
                    selectedStatusIndex = 3;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Text _statusText(ThemeData theme, String status, [double withOpacity = 0.8, double fontSize = 16]) {
    return Text(
      status,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor.withOpacity(withOpacity),
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

