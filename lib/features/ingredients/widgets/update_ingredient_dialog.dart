import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateIngredientDialog extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;

  const UpdateIngredientDialog({
    super.key,
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
  });

  @override
  State<UpdateIngredientDialog> createState() => _UpdateIngredientDialogState();
}

class _UpdateIngredientDialogState extends State<UpdateIngredientDialog> {
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
                widget.ingredientName,
                style: GoogleFonts.pacifico(
                  color: theme.secondaryHeaderColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              BaseInputField(title: widget.ingredientName),
              BaseInputField(title: '${widget.ingredientWeight} гр.'),
              BaseInputField(title: '${widget.ingredientPrice} руб.'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dialogButton(theme, 'Сохранить'),
                  const SizedBox(width: 10,),
                  _dialogButton(theme, 'Удалить'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _dialogButton(ThemeData theme, String title) {
    return ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor,
                elevation: 10
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: theme.secondaryHeaderColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
  }
}