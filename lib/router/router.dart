import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/ingredients_routes.dart';
import 'package:bake_budget_frontend/router/profile_routes.dart';
import 'package:bake_budget_frontend/router/tape_routes.dart';

import '../features/features.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true, children: [
          TapeRoutes.routes,
          IngredientsRoutes.routes,
          ProfileRoutes.routes,
        ],)
      ];
}
