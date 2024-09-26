import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';

class AdditionalRoutes {
  static final routes = AutoRoute(
    page: AdditionalWrapperRoute.page,
    children: [
      AutoRoute(
        page: AdditionalRoute.page,
        initial: true,
      ),
      AutoRoute(
        page: CostsRoute.page,
      ),
      AutoRoute(
        page: CostCalculationRoute.page,
      ),
      AutoRoute(
        page: OrdersRoute.page,
      ),
      AutoRoute(
        page: ReportRoute.page,
      )
    ],
  );
}
