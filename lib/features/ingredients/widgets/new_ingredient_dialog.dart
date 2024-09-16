import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewIngredientDialog extends StatefulWidget {
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  const NewIngredientDialog({
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
    this.fontSize = 24,
    super.key,
  });

  @override
  State<NewIngredientDialog> createState() => _NewIngredientDialogState();
}

class _NewIngredientDialogState extends State<NewIngredientDialog> {
  @override
  Widget build(BuildContext context) {
    const title = 'Создать ингредиент';
    const saveTitle = 'Сохранить';
    const ingredientName = 'Название...';
    const ingredientWeight = 'Вес...';
    const ingredientPrice = 'Стоимость...';
    const sizedBoxHeight = 20.0;
    const padding = 16.0;

    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: theme.cardColor,
      insetPadding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            padding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ingredientDialogTitle(
                title,
                theme,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              const BaseInputField(
                title: ingredientName,
              ),
              const BaseInputField(
                title: ingredientWeight,
              ),
              const BaseInputField(
                title: ingredientPrice,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              const BaseElevatedButton(
                title: saveTitle,
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _ingredientDialogTitle(String title, ThemeData theme) {
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
