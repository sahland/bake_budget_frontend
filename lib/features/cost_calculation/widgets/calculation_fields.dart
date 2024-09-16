import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class CalculationFields extends StatefulWidget {
  final double horizontalPadding;
  const CalculationFields({
    this.horizontalPadding = 20,
    super.key,
  });

  @override
  State<CalculationFields> createState() => _CalculationFieldsState();
}

class _CalculationFieldsState extends State<CalculationFields> {
  @override
  Widget build(BuildContext context) {
    const orderTitle = 'Название заказа';
    const weightTitle = 'Вес изделия(граммы)';
    const expenses = 'Дополнительные расходы(рубли)';
    const coefficient = 'Коэффицент наценки(%)';

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontalPadding,
      ),
      child: const Column(
        children: [
          BaseInputField(
            title: orderTitle,
          ),
          BaseInputField(
            title: weightTitle,
          ),
          BaseInputField(
            title: expenses,
          ),
          BaseInputField(
            title: coefficient,
          ),
        ],
      ),
    );
  }
}
