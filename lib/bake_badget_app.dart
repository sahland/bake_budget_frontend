import 'package:bake_budget_frontend/features/features.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';

import 'uikit/uikit.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class BakeBadgetApp extends StatefulWidget {
  const BakeBadgetApp({super.key, required this.themeController});

  final ThemeController themeController;

  @override
  State<BakeBadgetApp> createState() => _BakeBadgetAppState();
}

class _BakeBadgetAppState extends State<BakeBadgetApp> {
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
