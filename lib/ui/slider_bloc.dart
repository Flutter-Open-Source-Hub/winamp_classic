import 'package:flutter_bloc/flutter_bloc.dart';

// --- Events ---
abstract class SliderEvent {}

class SliderValueChanged extends SliderEvent {
  final double value;
  SliderValueChanged(this.value);
}

// --- States ---
abstract class SliderState {
  double get value;
}

class SliderValueState extends SliderState {
  @override
  final double value;
  SliderValueState(this.value);
}

// --- Bloc ---
class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc({double initial = 0.0}) : super(SliderValueState(initial)) {
    on<SliderValueChanged>(_onSliderValueChanged);
  }

  void _onSliderValueChanged(
    SliderValueChanged event,
    Emitter<SliderState> emit,
  ) {
    emit(SliderValueState(event.value));
  }
}
