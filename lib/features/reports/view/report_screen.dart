import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/reports/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    const title = 'Отчеты';
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
          const SliverToBoxAdapter(child: DateRangePicker(),),
          const SliverToBoxAdapter(child: ReportButtons(),),
        ],
      ),
    );
  }
}
