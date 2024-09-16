import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/cost_calculation/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CostCalculationScreen extends StatefulWidget {
  const CostCalculationScreen({super.key});

  @override
  State<CostCalculationScreen> createState() => _CostCalculationScreenState();
}

class _CostCalculationScreenState extends State<CostCalculationScreen> {
  @override
  Widget build(BuildContext context) {
    const title = 'Расчет стоимости';
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
          ),
          const SliverToBoxAdapter(
            child: CalculationInfo(
              costPrice: 0,
              finalCost: 0,
            ),
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
          const SliverToBoxAdapter(
            child: CalculationFields(),
          )
        ],
      ),
    );
  }
}
