import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/colors.dart';
import 'ui/slider_view_model.dart';
import 'ui/slider.dart';
import 'ui/slider_bloc.dart';
import 'ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Winamp Classic',
      theme: UITheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final SliderViewModel sliderVM;
  late final SliderBloc slider1kHz;
  late final SliderBloc slider3kHz;
  late final SliderBloc slider6kHz;
  late final SliderBloc slider10kHz;

  @override
  void initState() {
    super.initState();
    sliderVM = SliderViewModel();
    slider1kHz = SliderBloc(initial: sliderVM.slider1kHz);
    slider3kHz = SliderBloc(initial: sliderVM.slider3kHz);
    slider6kHz = SliderBloc(initial: sliderVM.slider6kHz);
    slider10kHz = SliderBloc(initial: sliderVM.slider10kHz);
  }

  @override
  void dispose() {
    slider1kHz.close();
    slider3kHz.close();
    slider6kHz.close();
    slider10kHz.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: UIColors.metalGradient,
            border: Border.all(color: UIColors.chromeBorder),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Digital Display Area
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    gradient: UIColors.displayGradient,
                  ),
                  child: Text(
                    '♪ NOW PLAYING ♪',
                    style: TextStyle(
                      color: UIColors.neonGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: UIColors.neonGreen.withValues(alpha: 125),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ),

                // Control Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildControlButton(Icons.skip_previous, 'Previous'),
                    _buildControlButton(Icons.play_arrow, 'Play'),
                    _buildControlButton(Icons.pause, 'Pause'),
                    _buildControlButton(Icons.stop, 'Stop'),
                    _buildControlButton(Icons.skip_next, 'Next'),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    BlocListener<SliderBloc, SliderState>(
                      bloc: slider1kHz,
                      listener: (context, state) {
                        sliderVM.slider1kHz = state.value;
                      },
                      child: BlocBuilder<SliderBloc, SliderState>(
                        bloc: slider1kHz,
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 2,
                            children: [
                              UISlider(
                                value: state.value,
                                onChanged:
                                    (v) =>
                                        slider1kHz.add(SliderValueChanged(v)),
                                vertical: true,
                              ),
                              Text(
                                sliderVM.slider1kHz.toStringAsFixed(2),
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '1kHz',
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    BlocListener<SliderBloc, SliderState>(
                      bloc: slider3kHz,
                      listener: (context, state) {
                        sliderVM.slider3kHz = state.value;
                      },
                      child: BlocBuilder<SliderBloc, SliderState>(
                        bloc: slider3kHz,
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 2,
                            children: [
                              UISlider(
                                value: state.value,
                                onChanged:
                                    (v) =>
                                        slider3kHz.add(SliderValueChanged(v)),
                                vertical: true,
                              ),
                              Text(
                                sliderVM.slider3kHz.toStringAsFixed(2),
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '3kHz',
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    BlocListener<SliderBloc, SliderState>(
                      bloc: slider6kHz,
                      listener: (context, state) {
                        sliderVM.slider6kHz = state.value;
                      },
                      child: BlocBuilder<SliderBloc, SliderState>(
                        bloc: slider6kHz,
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 2,
                            children: [
                              UISlider(
                                value: state.value,
                                onChanged:
                                    (v) =>
                                        slider6kHz.add(SliderValueChanged(v)),
                                vertical: true,
                              ),
                              Text(
                                sliderVM.slider6kHz.toStringAsFixed(2),
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '6kHz',
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    BlocListener<SliderBloc, SliderState>(
                      bloc: slider10kHz,
                      listener: (context, state) {
                        sliderVM.slider10kHz = state.value;
                      },
                      child: BlocBuilder<SliderBloc, SliderState>(
                        bloc: slider10kHz,
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 2,
                            children: [
                              UISlider(
                                value: state.value,
                                onChanged:
                                    (v) =>
                                        slider10kHz.add(SliderValueChanged(v)),
                                vertical: true,
                              ),
                              Text(
                                sliderVM.slider10kHz.toStringAsFixed(2),
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '10kHz',
                                style: TextStyle(
                                  color: UIColors.primaryText,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildControlButton(IconData icon, String tooltip) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        gradient: UIColors.buttonGradient,
        border: Border.all(color: UIColors.chromeBorder),
        borderRadius: BorderRadius.circular(2),
      ),
      child: IconButton(
        icon: Icon(icon, color: UIColors.neonGreen),
        tooltip: tooltip,
        onPressed: () {},
      ),
    );
  }
}
