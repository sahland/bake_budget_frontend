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
            automaticallyImplyLeading: false,
            title: AppBarTitle(
              theme: theme,
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
