import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class NewCostDialog extends StatefulWidget {
  final double verticalPadding;
  final double horizontalPadding;

  const NewCostDialog({
    this.verticalPadding = 100,
    this.horizontalPadding = 20,
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
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseDialogTitle(title: title),
              SizedBox(
                height: sizedBoxHeight,
              ),
              BaseInputField(
                title: costName,
              ),
              BaseInputField(
                title: costPrice,
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
