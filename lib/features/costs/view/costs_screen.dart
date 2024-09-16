import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/costs/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CostsScreen extends StatefulWidget {
  const CostsScreen({super.key});

  @override
  State<CostsScreen> createState() => _CostsScreenState();
}

class _CostsScreenState extends State<CostsScreen> {
  @override
  Widget build(BuildContext context) {
    const title = 'Издержки';
    const toolbarHeight = 70.0;
    const elevation = 80.0;

    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            centerTitle: true,
            floating: true,
            snap: true,
            toolbarHeight: toolbarHeight,
            elevation: elevation,
            backgroundColor: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            automaticallyImplyLeading: false,
            title: const AppBarTitle(
              title: title,
            ),
            leading: const LeadingPop(),
            actions: [
              AddButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext content) => const NewCostDialog(),
                  );
                },
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: ProductsDropdown(
              productsList: [
                'Торт',
                'Чизкейк',
                'Негр в пене',
                'Пузатик в масле',
                'Сладкий рулет',
              ],
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => CostInfoButton(
              costName: 'вода',
              costPrice: 100,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => const UpdateCostDialog(
                    costName: 'вода',
                    costPrice: 100,
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
