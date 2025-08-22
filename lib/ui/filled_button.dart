import 'package:flutter/material.dart';

import 'colors.dart';
import 'styles/button_styles.dart';

class UIFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final bool isLoading;
  final bool dismissKeyboard;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? overlayColor;

  const UIFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.dismissKeyboard = true,
    this.backgroundColor,
    this.foregroundColor,
    this.overlayColor,
    this.height,
  });

  const UIFilledButton.primary({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.dismissKeyboard = true,
    this.height,
  }) : backgroundColor = UIColors.buttonNormal,
       foregroundColor = UIColors.neonGreen,
       overlayColor = UIColors.buttonHover;

  UIFilledButton.secondary({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.dismissKeyboard = true,
    this.height,
  }) : backgroundColor = UIColors.buttonNormal,
       foregroundColor = UIColors.neonGreen,
       overlayColor = UIColors.buttonHover.withAlpha(5);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: UIButtonStyles.filledButtonStyle(
        backgroundColor,
        foregroundColor,
        overlayColor,
        height,
      ),
      onPressed:
          onPressed != null
              ? () {
                if (dismissKeyboard) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
                onPressed?.call();
              }
              : null,
      child:
          isLoading ? const CircularProgressIndicator.adaptive() : Text(text),
    );
  }
}
