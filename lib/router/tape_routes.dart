import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';

class TapeRoutes {
  static final routes = AutoRoute(page: TapeWrapperRoute.page, children: [
    AutoRoute(page: ProductsRoute.page, initial: true),
  ]);
}
