import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/list/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
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
              title: 'Дополнительное',
            ),
          ),
          const SliverToBoxAdapter(
            child: ListButtons(),
          )
        ],
      ),
    );
  }
}
