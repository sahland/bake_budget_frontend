import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class UpdateCostDialog extends StatefulWidget {
  final String costName;
  final int costPrice;

  final double verticalPadding;
  final double horizontalPadding;

  const UpdateCostDialog({
    super.key,
    required this.costName,
    required this.costPrice,
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
  });

  @override
  State<UpdateCostDialog> createState() => _UpdateCostDialogState();
}

class _UpdateCostDialogState extends State<UpdateCostDialog> {
  @override
  Widget build(BuildContext context) {
    const saveTitle = 'Сохранить';
    const deleteTitle = 'Удалить';
    const padding = 16.0;
    const sizedBoxHeight = 20.0;
    const sizedBoxWidth = 10.0;

    final costPriceTitle = '${widget.costPrice} руб.';
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
                title: widget.costName,
              ),
              const SizedBox(
                height: sizedBoxHeight,
              ),
              BaseInputField(
                title: widget.costName,
              ),
              BaseInputField(
                title: costPriceTitle,
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
                  SizedBox(width: sizedBoxWidth),
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
