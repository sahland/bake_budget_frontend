import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/ingredients/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({super.key});

  @override
  State<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            toolbarHeight: 70,
            elevation: 80,
            backgroundColor: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            title: AppBarTitle(
              theme: theme,
              title: 'Ингредиенты',
            ),
            actions: [notifications(theme)],
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const UserIngredientInfo(
              ingredientName: 'молоко',
              ingredientWeight: 1000,
              ingredientPrice: 60,
            ),
          )
        ],
      ),
    );
  }

  Stack notifications(ThemeData theme) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            './assets/icons/plus.svg',
            width: 20,
            height: 20,
            color: theme.secondaryHeaderColor,
          ),
        )
      ],
    );
  }
}
