import 'package:flutter/material.dart';

import '../colors.dart';
import 'text_styles.dart';

abstract final class UIButtonStyles {
  static ButtonStyle textButtonStyle([
    Color? foregroundColor,
    Color? overlayColor,
    double? height,
  ]) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(UIColors.transparent),
      foregroundColor: WidgetStateProperty.all<Color>(
        foregroundColor ?? UIColors.neonGreen,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        overlayColor ?? UIColors.transparent,
      ),
      shadowColor: WidgetStateProperty.all<Color>(UIColors.transparent),
      elevation: WidgetStateProperty.all<double>(2.0),
      minimumSize: WidgetStateProperty.all<Size>(Size.fromHeight(height ?? 45)),
      textStyle: WidgetStateProperty.all<TextStyle>(
        UITextStyles.titleBoldOpenSans(),
      ),
    );
  }

  static ButtonStyle filledButtonStyle([
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    double? height,
  ]) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        backgroundColor ?? UIColors.buttonNormal,
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        foregroundColor ?? UIColors.neonGreen,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        overlayColor ?? UIColors.buttonHover,
      ),
      elevation: WidgetStateProperty.all<double>(2.0),
      minimumSize: WidgetStateProperty.all<Size>(Size.fromHeight(height ?? 45)),
      textStyle: WidgetStateProperty.all<TextStyle>(
        UITextStyles.titleBoldOpenSans(),
      ),
    );
  }

  static ButtonStyle outlinedButtonStyle([
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? sideColor,
    double? height,
  ]) {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(
        backgroundColor ?? UIColors.buttonNormal,
      ),
      foregroundColor: WidgetStateProperty.all<Color>(
        foregroundColor ?? UIColors.neonGreen,
      ),
      overlayColor: WidgetStateProperty.all<Color>(
        overlayColor ?? UIColors.buttonHover,
      ),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(width: 2.0, color: sideColor ?? UIColors.navyBlue),
      ),
      elevation: WidgetStateProperty.all<double>(2.0),
      minimumSize: WidgetStateProperty.all<Size>(Size.fromHeight(height ?? 45)),
      textStyle: WidgetStateProperty.all<TextStyle>(
        UITextStyles.titleBoldOpenSans(),
      ),
    );
  }
}
