import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/data/data.dart';
import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'uikit/uikit.dart';

class BakeBudgetApp extends StatefulWidget {
  const BakeBudgetApp({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  State<BakeBudgetApp> createState() => _BakeBudgetAppState();
}

class _BakeBudgetAppState extends State<BakeBudgetApp> {
  final storage = const FlutterSecureStorage();
  final tokenStorage = TokenStorage();
  final _router = AppRouter();
  final authApiClient = AuthApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final emailApproveApiClient =
      EmailApproveApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final ingredientsApiClient =
      IngredientsApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final ordersApiClient = OrdersApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final outgoingsApiClient =
      OutgoingsApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final passwordResetApiClient =
      PasswordResetApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final productsApiClient =
      ProductsApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final reportsApiClient =
      ReportsApiClient.create(apiUrl: dotenv.env['API_KEY']);
  final usersApiClient = ReportsApiClient.create(apiUrl: dotenv.env['API_KEY']);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductsBloc(
            storage: storage,
            productsApiClient: productsApiClient,
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            tokenStorage: tokenStorage,
            authApiClient: authApiClient,
          ),
        ),
      ],
      child: ThemeInherited(
        themeController: widget.themeController,
        child: ThemeBuilder(
          builder: (_, themeMode) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: AppThemeData.lightTheme,
              darkTheme: AppThemeData.darkTheme,
              themeMode: themeMode,
              routerDelegate: AutoRouterDelegate(
                _router,
                navigatorObservers: () => [AutoRouteObserver()],
              ),
              routeInformationParser: _router.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}
