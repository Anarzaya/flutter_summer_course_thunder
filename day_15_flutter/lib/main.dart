import 'package:day_15_flutter/stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StopWatchApp());


}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StopWatch(

      ),
    );
  }
}
