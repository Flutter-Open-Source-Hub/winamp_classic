import 'package:flutter/material.dart';

/// Following Tailwind style of local components
abstract final class UIColors {
  const UIColors();

  static final Color transparent = Color(0x00000000);
  
  // Primary Background Colors
  static const Color darkGray = Color(0xFF2A2A2A);
  static const Color mediumGray = Color(0xFF3C3C3C);
  static const Color lightGray = Color(0xFF4A4A4A);

  // Signature Green (LED/Digital Display)
  static const Color neonGreen = Color(0xFF00FF41);
  static const Color digitalGreen = Color(0xFF00CC33);
  static const Color dimGreen = Color(0xFF008822);

  // Blue Accents
  static const Color electricBlue = Color(0xFF0099FF);
  static const Color deepBlue = Color(0xFF0066CC);
  static const Color navyBlue = Color(0xFF003366);

  // Metallic Frame Colors
  static const Color silver = Color(0xFFC0C0C0);
  static const Color darkSilver = Color(0xFF808080);
  static const Color chromeBorder = Color(0xFF606060);

  // Button States
  static const Color buttonPressed = Color(0xFF1A1A1A);
  static const Color buttonNormal = Color(0xFF333333);
  static const Color buttonHover = Color(0xFF404040);

  // Text Colors
  static const Color primaryText = Color(0xFFFFFFFF);
  static const Color secondaryText = Color(0xFFCCCCCC);
  static const Color accentText = Color(0xFF00FF41);

  // Status Colors
  static const Color playing = Color(0xFF00FF41);
  static const Color paused = Color(0xFFFFAA00);
  static const Color stopped = Color(0xFFFF4444);

  // Gradient Definitions
  static const LinearGradient metalGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFD0D0D0), Color(0xFF808080), Color(0xFF606060)],
  );

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF4A4A4A), Color(0xFF2A2A2A), Color(0xFF1A1A1A)],
  );

  static const LinearGradient displayGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF000000), Color(0xFF111111)],
  );
}

