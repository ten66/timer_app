import 'package:flutter/material.dart';
import 'package:timer_app/screens/timer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              TextSpan(
                text: 'Tag',
                style: TextStyle(color: Colors.deepPurple[400]),
              ),
              const TextSpan(
                text: 'Timer',
                style: TextStyle(color: Colors.black),
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
          crossAxisCount: 2,
          childAspectRatio: 5 / 4,
          children: const [
            TimerCard(),
            TimerCard(),
            TimerCard(),
            TimerCard(),
            TimerCard(),
            TimerCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'add timer',
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(top: 20),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const TimerScreen()),
          );
        },
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
      ),
    );
  }
}
