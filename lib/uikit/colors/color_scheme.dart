import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color primary;
  final Color secondary;
  final Color surface;
  final Color background;
  final Color textField;
  final Color textField2;
  final Color inactive;
  final Color dialogBackgroundColor;

  const AppColorScheme._(
      {required this.primary,
      required this.secondary,
      required this.surface,
      required this.background,
      required this.textField,
      required this.textField2,
      required this.inactive,
      required this.dialogBackgroundColor});

  const AppColorScheme.light()
      : primary = LightColorPalette.lightPink,
        secondary = LightColorPalette.lightScaffold,
        surface = LightColorPalette.white,
        background = LightColorPalette.lightScaffold,
        textField = LightColorPalette.black,
        textField2 = LightColorPalette.textGrey,
        inactive = LightColorPalette.chocoBrown,
        dialogBackgroundColor = LightColorPalette.lightChokoBrown;

  const AppColorScheme.dark()
      : primary = DarkColorPalette.lightPink,
        secondary = DarkColorPalette.white,
        surface = DarkColorPalette.blackBanner,
        background = DarkColorPalette.darkScaffold,
        textField = DarkColorPalette.white,
        textField2 = DarkColorPalette.textGrey,
        inactive = DarkColorPalette.darkGreen,
        dialogBackgroundColor = DarkColorPalette.darkGrey;

  @override
  ThemeExtension<AppColorScheme> copyWith(
      {Color? primary,
      Color? secondary,
      Color? surface,
      Color? background,
      Color? textField,
      Color? textField2,
      Color? inactive,
      Color? dialogBackgroundColor}) {
    return AppColorScheme._(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      surface: surface ?? this.surface,
      background: background ?? this.background,
      textField: textField ?? this.textField,
      textField2: textField2 ?? this.textField2,
      inactive: inactive ?? this.inactive,
      dialogBackgroundColor:
          dialogBackgroundColor ?? this.dialogBackgroundColor,
    );
  }

  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
        primary: Color.lerp(primary, other.primary, t)!,
        secondary: Color.lerp(secondary, other.secondary, t)!,
        surface: Color.lerp(surface, other.surface, t)!,
        background: Color.lerp(background, other.background, t)!,
        textField: Color.lerp(textField, other.textField, t)!,
        textField2: Color.lerp(textField2, other.textField2, t)!,
        inactive: Color.lerp(inactive, other.inactive, t)!,
        dialogBackgroundColor:
            Color.lerp(dialogBackgroundColor, other.dialogBackgroundColor, t)!);
  }

  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
