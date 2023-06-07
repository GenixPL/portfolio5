import 'package:flutter/material.dart';

ThemeData getThemeData() {
  const MaterialColor primary = Colors.amber;

  return ThemeData(
    primarySwatch: primary,
    brightness: Brightness.dark,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: _singleColor(Colors.transparent),
        foregroundColor: _hoveredColor(Colors.white),
      ),
    ),
  );
}

MaterialStateProperty<Color> _singleColor(Color color) {
  return MaterialStateProperty.all(color);
}

MaterialStateProperty<Color?> _hoveredColor(
  Color color, {
  Color? fallback,
}) {
  return MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return color;
      }

      return fallback;
    },
  );
}
