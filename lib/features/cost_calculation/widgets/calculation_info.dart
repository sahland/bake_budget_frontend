import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculationInfo extends StatelessWidget {
  final int costPrice;
  final int finalCost;
  const CalculationInfo({
    super.key,
    required this.costPrice,
    required this.finalCost,
  });

  @override
  Widget build(BuildContext context) {
    const calculationTitle = 'Рассчитать';
    const orderTitle = 'Создать заказ';
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BaseElevatedButton(title: calculationTitle),
              SizedBox(width: 20),
              BaseElevatedButton(title: orderTitle),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: 370,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: theme.dialogBackgroundColor,
              boxShadow: [_widgetShadow()],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  _infoText('Себестоимость: $costPrice руб.'),
                  const SizedBox(height: 10),
                  _infoText('Конечная стоимость: $finalCost руб.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _infoText(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  BoxShadow _widgetShadow() {
    return BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 10,
      offset: const Offset(0, 5),
    );
  }
}
