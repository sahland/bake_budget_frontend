import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class AdditionalButtons extends StatefulWidget {
  const AdditionalButtons({super.key});

  @override
  State<AdditionalButtons> createState() => _AdditionalButtonsState();
}

class _AdditionalButtonsState extends State<AdditionalButtons> {
  @override
  Widget build(BuildContext context) {
    const changingThemeTitle = 'Смена темы';
    const appInfoTitle = 'Информация о приложении';
    const costsTitle = 'Издержки';
    const costCalculationTitle = 'Расчет стоимости';
    const ordersTitle = 'Заказы';
    const reportsTitle = 'Отчеты';

    return Column(
      children: [
        BaseLongButton(
          onPressed: () {
            ThemeInherited.of(context).switchThemeMode();
          },
          title: changingThemeTitle,
        ),
        BaseLongButton(
          onPressed: () {
            //context.router.push(const ProductsRoute());
          },
          title: appInfoTitle,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const CostsRoute());
          },
          title: costsTitle,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const CostCalculationRoute());
          },
          title: costCalculationTitle,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const OrdersRoute());
          },
          title: ordersTitle,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const ReportRoute());
          },
          title: reportsTitle,
        ),
      ],
    );
  }
}
