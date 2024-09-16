import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewCostDialog extends StatefulWidget {
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  const NewCostDialog({
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
    this.fontSize = 24,
    super.key,
  });

  @override
  State<NewCostDialog> createState() => _NewCostDialogState();
}

class _NewCostDialogState extends State<NewCostDialog> {
  @override
  Widget build(BuildContext context) {
    const title = 'Новая издержка';
    const costName = 'Название...';
    const costPrice = 'Стоимость...';
    const saveTitle = 'Сохранить';
    const padding = 16.0;
    const sizedBoxHeight = 20.0;

    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: theme.cardColor,
      insetPadding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _newCostTitle(
                title,
                theme,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              const BaseInputField(
                title: costName,
              ),
              const BaseInputField(
                title: costPrice,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              const BaseElevatedButton(
                title: saveTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text _newCostTitle(String title, ThemeData theme) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor,
        fontSize: widget.fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
