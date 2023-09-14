import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFEFAE0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
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
          // mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 5 / 4,
          children: [
            timerCard(),
            timerCard(),
            timerCard(),
            timerCard(),
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
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '洗濯',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
            child: const Text(
              '45:00',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    ),
  );
}
