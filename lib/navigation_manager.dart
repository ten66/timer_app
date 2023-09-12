import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timer_app/screen_index.dart';
import 'package:timer_app/screens/home_screen.dart';
import 'package:timer_app/screens/settings_screen.dart';
import 'package:timer_app/screens/timer_screen.dart';

class NavigationManager extends ConsumerWidget {
  const NavigationManager({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // default value = 0
    int currentScreenIndex = ref.watch(screenIndexNotifierProvider);

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100,
        child: NavigationBar(
          onDestinationSelected: (int index) {
            final notifier = ref.read(screenIndexNotifierProvider.notifier);
            notifier.updateState(index);
          },
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
      ),
      body: [
        const HomeScreen(),
        const TimerScreen(),
        const SettingsScreen(),
      ][currentScreenIndex],
    );
  }
}
