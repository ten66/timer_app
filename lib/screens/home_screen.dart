import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFEFAE0),
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          children: [
            timerCard(),
            timerCard(),
            const SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: const Color(0xFFD4A373),
        onPressed: () {},
        tooltip: 'add timer',
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}

Widget timerCard() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      color: const Color(0xFFEDEDE9),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '英単語',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Text('25:00'),
        ],
      ),
    ),
  );
}
