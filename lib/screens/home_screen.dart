import 'package:flutter/material.dart';
import 'package:timer_app/screens/timer_screen.dart';

var timerInfoList = [
  ['洗濯', '00:45:00'],
  ['ポモドーロ', '00:25:00'],
];

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
          children: [
            for (final timerInfo in timerInfoList)
              TimerCard(
                title: timerInfo[0],
                time: timerInfo[1],
              )
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
  final String title;
  final String time;
  const TimerCard({
    super.key,
    required this.title,
    required this.time,
  });

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
            MaterialPageRoute(
                builder: (context) => TimerScreen(
                      title: title,
                      time: time,
                    )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                child: Text(
                  time,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
