import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateIngredientDialog extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  const UpdateIngredientDialog({
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
    this.fontSize = 24,
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
          vertical: widget.verticalPadding, horizontal: widget.verticalPadding),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _updateDialogTitle(theme),
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _updateDialogTitle(ThemeData theme) {
    return Text(
      widget.ingredientName,
      style: GoogleFonts.pacifico(
        color: theme.secondaryHeaderColor,
        fontSize: widget.fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
