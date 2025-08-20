import 'package:flutter/foundation.dart';

class SliderViewModel extends ChangeNotifier {
  late double _slider1kHz;
  late double _slider3kHz;
  late double _slider6kHz;
  late double _slider10kHz;

  SliderViewModel({
    final double slider1kHz = 0.5,
    final double slider3kHz = 0.5,
    final double slider6kHz = 0.5,
    final double slider10kHz = 0.5,
  }) {
    _slider1kHz = slider1kHz;
    _slider3kHz = slider3kHz;
    _slider6kHz = slider6kHz;
    _slider10kHz = slider10kHz;
  }

  double get slider1kHz => _slider1kHz;
  double get slider3kHz => _slider3kHz;
  double get slider6kHz => _slider6kHz;
  double get slider10kHz => _slider10kHz;

  /// SEtters for sliders
  /// These methods will notify listeners to update the UI when the slider values change.
  set slider1kHz(double value) {
    _slider1kHz = value;
    notifyListeners();
  }

  set slider3kHz(double value) {
    _slider3kHz = value;
    notifyListeners();
  }

  set slider6kHz(double value) {
    _slider6kHz = value;
    notifyListeners();
  }

  set slider10kHz(double value) {
    _slider10kHz = value;
    notifyListeners();
  }
}
