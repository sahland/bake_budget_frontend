import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';

import 'uikit/uikit.dart';

class BakeBudgetApp extends StatefulWidget {
  const BakeBudgetApp({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  State<BakeBudgetApp> createState() => _BakeBudgetAppState();
}

class _BakeBudgetAppState extends State<BakeBudgetApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
      themeController: widget.themeController,
      child: ThemeBuilder(
        builder: (_, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            routerConfig: _router.config(),
          );
        },
      ),
    );
  }
}
