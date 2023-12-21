import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class AnalogClockWidget extends StatefulWidget {
  const AnalogClockWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnalogClockWidgetState createState() => _AnalogClockWidgetState();
}

class _AnalogClockWidgetState extends State<AnalogClockWidget> {
  final GlobalKey<AnalogClockState> _analogClockKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      key: _analogClockKey,
      dateTime: DateTime.now(),
      isKeepTime: false,
    );
  }
}
