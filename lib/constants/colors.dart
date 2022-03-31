import 'package:flutter/material.dart';

class ThemeColorsFactory {
  final Map<Brightness, ThemeColors> map = {
    Brightness.light: LightColors(),
    Brightness.dark: DarkColors()
  };

  ThemeColors create(Brightness type) {
    if (!map.containsKey(type)) {
      throw Exception("brightness type not found!");
    }

    return map[type] as ThemeColors;
  }
}

abstract class ThemeColors {
  late Color kPrimaryColor;
  late Color kBackgroundColor;
  late Color kTypeLight;
  late Color kTextLight;
  late Color kTextDark;
}

class LightColors implements ThemeColors {
  @override
  late Color kPrimaryColor = const Color(0xFF000000);

  @override
  Color kBackgroundColor = const Color(0xFFFFFFFF);

  @override
  Color kTypeLight = const Color(0xFFFFFFFF);

  @override
  Color kTextLight = const Color(0xFFFFFFFF);

  @override
  Color kTextDark = const Color(0xFF000000);
}

class DarkColors implements ThemeColors {
  @override
  Color kPrimaryColor = const Color(0xFF000000);

  @override
  Color kBackgroundColor = const Color(0xFF363230);

  @override
  Color kTypeLight = const Color(0xFFFFFFFF);

  @override
  Color kTextLight = const Color(0xFFFFFFFF);

  @override
  Color kTextDark = const Color(0xFFFFFFFF);
}
