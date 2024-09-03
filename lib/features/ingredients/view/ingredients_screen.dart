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
            leading: AppBarReorder(
              context: context,
              theme: theme,
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const UserIngredientInfo(),
          )
        ],
      ),
    );
  }
}
