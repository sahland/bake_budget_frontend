import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/orders/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int _selectedTabIndex = 0;

  final List<String> tabTexts = [
    'Не начаты',
    'В процессе',
    'Завершены',
    'Отменены',
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Заказы';
    const toolbarHeight = 70.0;
    const elevation = 80.0;
    const horizontalSliverPadding = 10.0;
    const verticalSliverPadding = 20.0;

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
          SliverToBoxAdapter(
            child: _orderTabs(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalSliverPadding,
              vertical: verticalSliverPadding,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return OrderInfo(
                    imagePath:
                        'https://domruza.ru/d/0da7b433056b629442e49cde4eb65a77.jpg',
                    orderName: 'Заказ 1',
                    orderPrice: 1230,
                    weight: 2000,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => const OrderDialog(
                          title: 'Заказ 1',
                        ),
                      );
                    },
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _orderTabs([
    double height = 60,
    double margin = 10,
    double padding = 2,
    double fontSize = 20,
  ]) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(vertical: margin),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabTexts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: BaseBuildTab(
              index: index,
              text: tabTexts[index],
              isActive: _selectedTabIndex == index,
              fontSize: fontSize,
              onTap: () => _onTabSelected(index),
            ),
          );
        },
      ),
    );
  }
}
