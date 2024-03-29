import 'package:flutter/material.dart';

class AppTheme {
  //0xFFE0F2F1Color
  get _buttonBGColor => MaterialStatePropertyAll(Colors.indigoAccent);

  get _fixedButtonSize => MaterialStatePropertyAll(Size(200, 50));

  get buttonTextColor => Colors.red;

  ThemeData get materialTheme {
    return ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          titleTextStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: _buttonBGColor,
            fixedSize: _fixedButtonSize,
            textStyle:
                MaterialStatePropertyAll(TextStyle(color: buttonTextColor)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: _buttonBGColor,
            fixedSize: _fixedButtonSize,
            textStyle: MaterialStatePropertyAll(TextStyle(
                color: buttonTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.indigo));
  }
}
