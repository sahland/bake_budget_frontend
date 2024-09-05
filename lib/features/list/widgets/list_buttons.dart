import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/uikit/widgets/base_long_button.dart';
import 'package:flutter/material.dart';

class ListButtons extends StatefulWidget {
  const ListButtons({super.key});

  @override
  State<ListButtons> createState() => _ListButtonsState();
}

class _ListButtonsState extends State<ListButtons> {
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
          onPressed: () {},
          title: 'Готовые изделия',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {},
          title: 'Издержки',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {},
          title: 'Расчет стоимости',
          width: 370,
          height: 65,
        ),
        BaseLongButton(
          onPressed: () {},
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
