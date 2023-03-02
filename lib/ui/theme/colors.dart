import 'package:flutter/material.dart';

final swatchColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
    backgroundColor: Colors.white70,
    accentColor: Colors.redAccent,
    cardColor: Colors.white,
    errorColor: Colors.orangeAccent,
    brightness: Brightness.light);

final colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Colors.red,
  onPrimary: Colors.white,
  secondary: Colors.redAccent,
  onSecondary: Colors.white,
  error: Colors.orangeAccent,
  onError: Colors.white,
  background: Colors.white,
  onBackground: Colors.black87,
  surface: Colors.red.shade50,
  onSurface: Colors.black87,
);
