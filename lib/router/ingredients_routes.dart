import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';

class IngredientsRoutes {
  static final routes =
      AutoRoute(page: IngredientsWrapperRoute.page, children: [
    AutoRoute(page: IngredientsRoute.page, initial: true),
  ]);
}
