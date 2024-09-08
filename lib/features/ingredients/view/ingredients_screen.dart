import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/ingredients/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({super.key});

  @override
  State<IngredientsScreen> createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    const title = 'Ингредиенты';
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            centerTitle: true,
            floating: true,
            snap: true,
            toolbarHeight: 70,
            elevation: 80,
            backgroundColor: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            title: AppBarTitle(
              theme: theme,
              title: title,
            ),
            actions: [
              AddButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext content) =>
                        const NewIngredientDialog(),
                  );
                },
              )
            ],
          ),
          SliverList.builder(
            itemBuilder: (context, index) => UserIngredientButton(
              ingredientName: 'молоко',
              ingredientWeight: 1000,
              ingredientPrice: 60,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      const UpdateIngredientDialog(
                    ingredientName: 'молоко',
                    ingredientWeight: 1000,
                    ingredientPrice: 60,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
