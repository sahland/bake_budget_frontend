import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/product/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  final String title;

  const ProductScreen({
    super.key,
    required this.title,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
            automaticallyImplyLeading: false,
            title: AppBarTitle(
              theme: theme,
              title: widget.title,
            ),
            leading: const LeadingPop(),
          ),
          const SliverToBoxAdapter(
            child: NewProductInfo(),
          )
        ],
      ),
    );
  }
}