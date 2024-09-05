import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';

class ListRoutes {
  static final routes = AutoRoute(
    page: ListWrapperRoute.page,
    children: [
      AutoRoute(page: ListRoute.page, initial: true),
    ],
  );
}
