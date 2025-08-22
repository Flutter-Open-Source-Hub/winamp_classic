import 'package:flutter/material.dart';

import '../colors.dart';

abstract final class UITextStyles {
  static TextStyle headerOpenSans({
    Color color = UIColors.primaryText,
    double fontSize = 20,
  }) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle headerInter({
    Color color = UIColors.primaryText,
    double fontSize = 20,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle titleBoldOpenSans({
    Color color = UIColors.primaryText,
    double fontSize = 18,
  }) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle titleBoldInter({
    Color color = UIColors.primaryText,
    double fontSize = 18,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle titleOpenSans({
    Color color = UIColors.primaryText,
    double fontSize = 18,
  }) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle titleInter({
    Color color = UIColors.primaryText,
    double fontSize = 18,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle bodyBoldOpenSans({
    Color color = UIColors.primaryText,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle bodyBoldInter({
    Color color = UIColors.primaryText,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle bodyOpenSans({
    Color color = UIColors.primaryText,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle bodyInter({
    Color color = UIColors.primaryText,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: color,
    );
  }
}