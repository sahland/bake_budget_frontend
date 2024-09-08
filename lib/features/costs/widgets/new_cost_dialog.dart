import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewCostDialog extends StatefulWidget {
  const NewCostDialog({super.key});

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

    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: theme.cardColor,
      insetPadding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: GoogleFonts.pacifico(
                  color: theme.secondaryHeaderColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              const BaseInputField(title: costName),
              const BaseInputField(title: costPrice),
              const SizedBox(height: 20),
              const BaseElevatedButton(title: saveTitle)
            ],
          ),
        ),
      ),
    );
  }
}
