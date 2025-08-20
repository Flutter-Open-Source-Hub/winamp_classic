import 'package:flutter/material.dart';

import 'colors.dart';

// Custom Theme partially based on Winamp
abstract final class UITheme {
  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: 'Inter',
      brightness: Brightness.dark,
      primarySwatch: _createMaterialColor(UIColors.neonGreen),
      scaffoldBackgroundColor: UIColors.darkGray,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: UIColors.mediumGray,
        foregroundColor: UIColors.primaryText,
        elevation: 2,
      ),

      // Card Theme
      cardTheme: CardTheme(
        color: UIColors.mediumGray,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: UIColors.chromeBorder, width: 1),
        ),
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: UIColors.buttonNormal,
          foregroundColor: UIColors.primaryText,
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),

      // Text Themes
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: UIColors.primaryText,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: UIColors.primaryText),
        bodyMedium: TextStyle(color: UIColors.secondaryText),
      ),

      // Icon Theme
      iconTheme: const IconThemeData(color: UIColors.neonGreen, size: 20),

      // Slider Theme (for equalizer bars)
      sliderTheme: SliderThemeData(
        activeTrackColor: UIColors.neonGreen,
        inactiveTrackColor: UIColors.darkSilver,
        thumbColor: UIColors.silver,
        overlayColor: UIColors.neonGreen.withValues(alpha: 51),
      ),

      // List Tile Theme (for playlist items)
      listTileTheme: const ListTileThemeData(
        textColor: UIColors.primaryText,
        iconColor: UIColors.neonGreen,
        selectedTileColor: UIColors.buttonHover,
      ),
    );
  }

  static MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final double r = color.r, g = color.g, b = color.b;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        (r + ((ds < 0 ? r : (255 - r)) * ds).round()).toInt(),
        (g + ((ds < 0 ? g : (255 - g)) * ds).round()).toInt(),
        (b + ((ds < 0 ? b : (255 - b)) * ds).round()).toInt(),
        1,
      );
    }
    return MaterialColor(color.toARGB32(), swatch);
  }
}
