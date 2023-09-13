import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Moti Timer'),
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: 'Moti',
                style: TextStyle(color: Colors.deepPurple[400]),
              ),
              const TextSpan(
                text: 'Time',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            timerCard(),
            timerCard(),
          ],
        ),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.grey,
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      // ),
    );
  }
}

Widget timerCard() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.purple[100],
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Column(
      children: [
        Text('study'),
        Text('25:00'),
      ],
    ),
  );
}
