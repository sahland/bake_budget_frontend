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
          SliverToBoxAdapter(
            child: _orderTabs(),
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
                  return const OrderInfo(
                      imagePath:
                          'https://domruza.ru/d/0da7b433056b629442e49cde4eb65a77.jpg',
                      orderName: 'Заказ 1',
                      orderPrice: 1230,
                      weight: 2000);
                },
                childCount: 10, // Количество продуктов
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _orderTabs() {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabTexts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: BaseBuildTab(
              index: index,
              text: tabTexts[index],
              isActive: _selectedTabIndex == index,
              onTap: () => _onTabSelected(index),
            ),
          );
        },
      ),
    );
  }
}
