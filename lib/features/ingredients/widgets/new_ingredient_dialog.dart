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
    const title = 'Создать ингредиент';
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
              const BaseInputField(title: 'Название...'),
              const BaseInputField(title: 'Вес...'),
              const BaseInputField(title: 'Стоимость...'),
              const SizedBox(height: 20),
              const BaseElevatedButton(title: saveTitle)
            ],
          ),
        ),
      ),
    );
  }
}
