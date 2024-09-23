import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculationInfo extends StatelessWidget {
  final int costPrice;
  final int finalCost;

  final double fontSize;
  final double width;
  final double height;
  final double paddingVertical;
  final double paddingHorizontal;
  final double borderRadius;

  const CalculationInfo({
    required this.costPrice,
    required this.finalCost,
    this.fontSize = 20,
    this.width = 370,
    this.height = 100,
    this.paddingVertical = 5,
    this.paddingHorizontal = 10,
    this.borderRadius = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const calculationTitle = 'Рассчитать';
    const orderTitle = 'Создать заказ';
    const sizedBoxWidth = 20.0;
    const sizedBoxHeight = 15.0;

    final costPriceTitle = 'Себестоимость: $costPrice руб.';
    final finalCostTitle = 'Конечная стоимость: $finalCost руб.';

    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: paddingHorizontal,
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BaseElevatedButton(
                title: calculationTitle,
              ),
              SizedBox(width: sizedBoxWidth),
              BaseElevatedButton(
                title: orderTitle,
              ),
            ],
          ),
          const SizedBox(height: sizedBoxHeight),
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              color: theme.dialogBackgroundColor,
              boxShadow: [_widgetShadow()],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: sizedBoxHeight),
                  _infoText(costPriceTitle),
                  const SizedBox(height: sizedBoxHeight),
                  _infoText(finalCostTitle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _infoText(String text, [int maxLine = 1]) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }

  BoxShadow _widgetShadow([double opacity = 0.3]) {
    const spreadRadius = 2.0;
    const blurRadius = 10.0;
    const offsetDx = 0.0;
    const offsetDy = 5.0;

    return BoxShadow(
      color: Colors.black.withOpacity(opacity),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: const Offset(
        offsetDx,
        offsetDy,
      ),
    );
  }
}
