import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/product/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  final String title;
  final String weight;
  final String imagePath;

  const ProductScreen({
    super.key,
    required this.title,
    required this.weight,
    required this.imagePath,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    const searchTitle = 'Найти продукт...';
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
            title: AppBarTitle(
              title: widget.title,
            ),
            leading: const LeadingPop(),
          ),
          SliverToBoxAdapter(
            child: NewProductInfo(
              title: widget.title,
              weight: widget.weight,
              imagePath: widget.imagePath,
            ),
          ),
          const SliverToBoxAdapter(
            child: BaseSearchField(
              title: searchTitle,
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const UserIngredientButton(
              ingredientName: 'молоко',
              ingredientWeight: 1000,
              ingredientPrice: 60,
            ),
          ),
        ],
      ),
    );
  }
}
