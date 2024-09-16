import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bake_budget_app.dart';
import 'features/features.dart';
import 'theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: '.env');
  final prefs = await SharedPreferences.getInstance();
  final themeStorage = ThemeStorage(prefs: prefs);
  final themeRepository = ThemeRepository(themeStorage: themeStorage);
  final themeController = ThemeController(themeRepository: themeRepository);
  runApp(BakeBudgetApp(themeController: themeController));
}
