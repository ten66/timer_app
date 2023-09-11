import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: const Column(
              children: [
                Text(
                  'title',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            '00:05:15',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.stop_outlined),
                label: const Text('STOP'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow_outlined),
                label: const Text('START'),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
