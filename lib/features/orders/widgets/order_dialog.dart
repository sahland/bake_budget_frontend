import 'package:bake_budget_frontend/uikit/uikit.dart';
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

    const notStarted = 'Не начат';
    const inProgress = 'В процессе';
    const completed = 'Завершён';
    const cancelled = 'Отменён';

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
            _titleText(theme),
            _statusText(status, theme),
            const BaseCheckbox(
              title: notStarted,
              index: 0,
              fontSize: 16,
            ),
            const BaseCheckbox(
              title: inProgress,
              index: 1,
              fontSize: 16,
            ),
            const BaseCheckbox(
              title: completed,
              index: 2,
              fontSize: 16,
            ),
            const BaseCheckbox(
              title: cancelled,
              index: 3,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }

  Text _statusText(String status, ThemeData theme) {
    return Text(
      status,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor.withOpacity(0.8),
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text _titleText(ThemeData theme) {
    return Text(
      widget.title,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
