import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:bake_budget_frontend/uikit/widgets/base_long_button.dart';
import 'package:flutter/material.dart';

class AdditionalButtons extends StatefulWidget {
  const AdditionalButtons({super.key});

  @override
  State<AdditionalButtons> createState() => _AdditionalButtonsState();
}

class _AdditionalButtonsState extends State<AdditionalButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseLongButton(
          onPressed: () {
            ThemeInherited.of(context).switchThemeMode();
          },
          title: 'Смена темы',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {
            //context.router.push(const ProductsRoute());
          },
          title: 'Информация о приложении',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const CostsRoute());
          },
          title: 'Издержки',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const CostCalculationRoute());
          },
          title: 'Расчет стоимости',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {
            context.router.push(const OrdersRoute());
          },
          title: 'Заказы',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {},
          title: 'Отчеты',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {},
          title: 'Группы',
          width: 370,
          height: 65,
        ),
      ],
    );
  }
}
