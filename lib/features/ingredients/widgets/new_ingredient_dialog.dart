import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class NewIngredientDialog extends StatefulWidget {
  final double verticalPadding;
  final double horizontalPadding;

  const NewIngredientDialog({
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
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
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            padding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseDialogTitle(
                title: title,
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              BaseInputField(
                title: ingredientName,
              ),
              BaseInputField(
                title: ingredientWeight,
              ),
              BaseInputField(
                title: ingredientPrice,
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              BaseElevatedButton(
                title: saveTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
