import 'package:flutter/material.dart';

import '../uikit.dart';

abstract class AppThemeData {
  static const _lightColorScheme = AppColorScheme.light();
  static const _darkColorScheme = AppColorScheme.dark();

  static final lightTheme = ThemeData(
      extensions: const [_lightColorScheme],
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
          brightness: Brightness.light, primary: _lightColorScheme.primary),
      scaffoldBackgroundColor: _lightColorScheme.background,
      cardColor: _lightColorScheme.inactive,
      secondaryHeaderColor: _lightColorScheme.secondary,
      primaryColor: _lightColorScheme.primary,
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: _lightColorScheme.textField)),
      dialogBackgroundColor: _lightColorScheme.dialogBackgroundColor);

  static final darkTheme = ThemeData(
      extensions: const [_darkColorScheme],
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
          brightness: Brightness.dark,
          primary: _darkColorScheme.primary,
          surface: _darkColorScheme.surface),
      scaffoldBackgroundColor: _darkColorScheme.background,
      secondaryHeaderColor: _darkColorScheme.secondary,
      cardColor: _darkColorScheme.dialogBackgroundColor,
      primaryColor: _darkColorScheme.primary,
      textTheme:
          TextTheme(bodyMedium: TextStyle(color: _darkColorScheme.textField)),
      dialogBackgroundColor: _darkColorScheme.dialogBackgroundColor);
}
