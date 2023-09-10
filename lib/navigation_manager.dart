import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timer_app/screen_index.dart';
import 'package:timer_app/screens/home_screen.dart';

class NavigationManager extends ConsumerWidget {
  const NavigationManager({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // default value = 0
    final currentScreenIndex = ref.watch(screenIndexNotifierProvider);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentScreenIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.timer),
            icon: Icon(Icons.timer_outlined),
            label: 'Timer',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
          ),
        ],
      ),
      body: [
        const HomeScreen(),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentScreenIndex],
    );
  }
}
