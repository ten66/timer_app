import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            children: [
              const TextSpan(
                text: 'Time',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Master',
                style: TextStyle(color: Colors.deepPurple[400]),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
          ],
        ),
      ),
    );
  }
}

Widget timerCard() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.deepPurple[100],
      borderRadius: BorderRadius.circular(20),
    ),
    margin: const EdgeInsets.only(
      top: 20,
      right: 20,
      left: 20,
    ),
    padding: const EdgeInsets.all(25),
    child: const Row(
      children: [
        Column(
          children: [
            Text('洗濯'),
            Text('45:00'),
          ],
        ),
      ],
    ),
  );
}
