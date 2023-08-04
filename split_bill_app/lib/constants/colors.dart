import 'package:flutter/material.dart';
import 'dart:ui';

class AppColors {
  static const Color primaryColor = Color(0xFF0066CC);
  static const Color secondaryColor = Color(0xFF03A9F4);
  static const Color backgroundColor = Color(0xFFF5F5F5);
}

Color? hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color? primaryColor = hexToColor("#105D38");
  static Color? secondaryColor = hexToColor("#f3e4dd");
  static Color? backgroundColor = hexToColor("#ffffff");
  static Color? buttonColor = hexToColor("#4CD080");
  static Color? buttonTextColor = hexToColor("#ffffff");
  static Color? profileColor = hexToColor("#E3FFEE");
}
