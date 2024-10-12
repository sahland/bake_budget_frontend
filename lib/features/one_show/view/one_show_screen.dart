import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/data/data.dart';
import 'package:bake_budget_frontend/router/router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final TokenStorage _tokenStorage = TokenStorage();

  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  // Метод для проверки авторизации
  void _checkAuthentication() async {
    await _tokenStorage.clearTokens();
    final token = await _tokenStorage.getToken();
    log(token.toString());
    if (token == null) {
      context.router.replace(const AuthRoute());
    } else {
      context.router.replace(const HomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Загрузка, пока проверяем токен
      ),
    );
  }
}
