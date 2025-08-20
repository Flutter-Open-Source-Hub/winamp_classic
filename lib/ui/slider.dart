import 'package:flutter/material.dart';

class UISlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  final bool vertical;

  const UISlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
    this.vertical = false,
  });

  @override
  Widget build(BuildContext context) {
    final slider = SliderTheme(
      data: Theme.of(context).sliderTheme,
      child: Slider(value: value, onChanged: onChanged, min: min, max: max),
    );

    if (vertical) {
      return RotatedBox(quarterTurns: 3, child: slider);
    }
    return slider;
  }
}
