import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const title = 'BakeBudget';
    const searchTitle = 'Найти изделие...';
    const productTitle = 'Новый продукт';
    const productWeight = 'Расчетный вес';
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
            title: const AppBarTitle(
              title: title,
            ),
            //leading: AppBarReorder(context: context, theme: theme),
            actions: [
              AddButton(
                onPressed: () {
                  context.router.push(
                    ProductRoute(
                      title: productTitle,
                      weight: productWeight,
                      imagePath:
                          'https://akbflash.ru/files/images/cache/placeHolder/placeHolder.png',
                    ),
                  );
                },
              ),
            ],
          ),
          SliverPersistentHeader(
            pinned: false,
            delegate: _SliverAppBarDelegate(
              child: Container(
                color: theme.scaffoldBackgroundColor,
                child: const BaseSearchField(
                  title: searchTitle,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const MyProduct(
                    imagePath:
                        'https://domruza.ru/d/0da7b433056b629442e49cde4eb65a77.jpg',
                    productName: 'Торт',
                    weight: 1000,
                  );
                },
                childCount: 10, // Количество продуктов
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    this.minHeight = 110.0,
    this.maxHeight = 120.0,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
