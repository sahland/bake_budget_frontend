import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class UpdateIngredientDialog extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;
  final double verticalPadding;
  final double horizontalPadding;

  const UpdateIngredientDialog({
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
    super.key,
  });

  @override
  State<UpdateIngredientDialog> createState() => _UpdateIngredientDialogState();
}

class _UpdateIngredientDialogState extends State<UpdateIngredientDialog> {
  @override
  Widget build(BuildContext context) {
    const saveTitle = 'Сохранить';
    const deleteTitle = 'Удалить';
    const padding = 16.0;
    const sizedBoxHeight = 20.0;
    const sizedBoxWidth = 10.0;

    final ingredientWeightTitle = '${widget.ingredientWeight} гр.';
    final ingredientPriceTitle = '${widget.ingredientPrice} руб.';
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
              BaseDialogTitle(
                title: widget.ingredientName,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              BaseInputField(
                title: widget.ingredientName,
              ),
              BaseInputField(
                title: ingredientWeightTitle,
              ),
              BaseInputField(
                title: ingredientPriceTitle,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseElevatedButton(
                    title: saveTitle,
                  ),
                  SizedBox(
                    width: sizedBoxWidth,
                  ),
                  BaseElevatedButton(
                    title: deleteTitle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
