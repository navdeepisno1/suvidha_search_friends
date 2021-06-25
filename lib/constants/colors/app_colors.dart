import 'package:flutter/material.dart';

final MaterialColor kColorPrimary = getMaterialColor(0xFF02070B);
final MaterialColor kColorSecondary = getMaterialColor(0xFFFFFFFF);
final MaterialColor kColorTertiary = getMaterialColor(0xFF10A4E3);
final MaterialColor kColorTertiary2 = getMaterialColor(0xFF103151);

MaterialColor getMaterialColor(int color) {
  Map<int, Color> swatch = {
    50: Color(color).withOpacity(0.1),
    100: Color(color).withOpacity(0.2),
    200: Color(color).withOpacity(0.3),
    300: Color(color).withOpacity(0.4),
    400: Color(color).withOpacity(0.5),
    500: Color(color).withOpacity(0.6),
    600: Color(color).withOpacity(0.7),
    700: Color(color).withOpacity(0.8),
    800: Color(color).withOpacity(0.9),
    900: Color(color).withOpacity(1.0),
  };
  return MaterialColor(color, swatch);
}
