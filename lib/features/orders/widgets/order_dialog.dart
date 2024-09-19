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
  @override
  Widget build(BuildContext context) {
    const status = 'Статус заказа';

    const notStarted = 'Не начат';
    const inProgress = 'В процессе';
    const completed = 'Завершён';
    const cancelled = 'Отменён';
    const padding = 16.0;
    const withOpacity = 0.8;
    const fontSize = 16.0;

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
            BaseDialogTitle(title: widget.title,),
            _statusText(status, withOpacity, fontSize, theme,),
            const BaseCheckbox(
              title: notStarted,
              index: 0,
            ),
            const BaseCheckbox(
              title: inProgress,
              index: 1,
            ),
            const BaseCheckbox(
              title: completed,
              index: 2,
            ),
            const BaseCheckbox(
              title: cancelled,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  Text _statusText(String status, double withOpacity, double fontSize, ThemeData theme,) {
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
