import 'dart:async';

import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  final String title;
  final String time;
  const TimerScreen({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  var seconds = 45 * 60;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        setState(() => seconds--);
        debugPrint('現在の時間: $seconds');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_outlined),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildTimer(widget.time),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.stop_outlined),
                  label: const Text('STOP'),
                ),
                const SizedBox(width: 30),
                OutlinedButton.icon(
                  onPressed: () {
                    startTimer();
                  },
                  icon: const Icon(Icons.play_arrow_outlined),
                  label: const Text('START'),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

Widget buildTimer(time) {
  return Text(
    time,
    style: const TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
    ),
  );
}
