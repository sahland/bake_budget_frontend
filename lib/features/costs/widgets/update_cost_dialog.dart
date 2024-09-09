import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateCostDialog extends StatefulWidget {
  final String costName;
  final int costPrice;

  const UpdateCostDialog({
    super.key,
    required this.costName,
    required this.costPrice,
  });

  @override
  State<UpdateCostDialog> createState() => _UpdateCostDialogState();
}

class _UpdateCostDialogState extends State<UpdateCostDialog> {
  @override
  Widget build(BuildContext context) {
    const saveTitle = 'Сохранить';
    const deleteTitle = 'Удалить';
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
                widget.costName,
                style: GoogleFonts.pacifico(
                  color: theme.secondaryHeaderColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              BaseInputField(title: widget.costName),
              BaseInputField(title: '${widget.costPrice} руб.'),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BaseElevatedButton(title: saveTitle),
                  SizedBox(width: 10),
                  BaseElevatedButton(title: deleteTitle),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
