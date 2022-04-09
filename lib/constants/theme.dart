import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/colors.dart';

extension ThemeDataExtension on ThemeData {
  ThemeColors get themeColors => ThemeColorsFactory().create(brightness);

  Color get kPrimaryColor => themeColors.kPrimaryColor;
  Color get kBackgroundColor => themeColors.kBackgroundColor;
  Color get kTypeLight => themeColors.kTypeLight;
  Color get kTextLight => themeColors.kTextLight;
  Color get kTextDark => themeColors.kTextDark;
  Color get kTypeDark => themeColors.kTypeDark;
}

final ThemeData themeLight = ThemeData(
  canvasColor: LightColors().kBackgroundColor,
  colorScheme: const ColorScheme.light(),
  dividerTheme: const DividerThemeData(color: Colors.transparent),
);

final ThemeData themeDark = ThemeData(
  canvasColor: DarkColors().kBackgroundColor,
  colorScheme: const ColorScheme.dark(),
  dividerTheme: const DividerThemeData(color: Colors.transparent),
);
