import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.dark,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.white;
          }
          return null;
        },
      ),
    ),
  ),
);
