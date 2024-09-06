import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewIngredientDialog extends StatefulWidget {
  const NewIngredientDialog({super.key});

  @override
  State<NewIngredientDialog> createState() => _NewIngredientDialogState();
}

class _NewIngredientDialogState extends State<NewIngredientDialog> {
  @override
  Widget build(BuildContext context) {
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
                'Ингредиент',
                style: GoogleFonts.pacifico(
                  color: theme.secondaryHeaderColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              const BaseInputField(title: 'Название...'),
              const BaseInputField(title: 'Вес...'),
              const BaseInputField(title: 'Стоимость...'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  elevation: 10
                ),
                child: Text(
                  'Сохранить',
                  style: TextStyle(
                    color: theme.secondaryHeaderColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
