import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Color(0xFFFFFFFF),
    accentColor: Color(0xFF24695C),
  );
}
