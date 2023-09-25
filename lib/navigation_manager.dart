// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:timer_app/screen_index.dart';
// import 'package:timer_app/screens/home_screen.dart';
// import 'package:timer_app/screens/settings_screen.dart';
// import 'package:timer_app/screens/timer_screen.dart';

// ////////////////////////////////////////////////
// ///初期に実装したものの、オーバーな機能
// ///将来的な機能拡張時に使用予定
// ////////////////////////////////////////////////

// class NavigationManager extends ConsumerWidget {
//   const NavigationManager({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // default value = 0
//     int currentScreenIndex = ref.watch(screenIndexNotifierProvider);

//     return Scaffold(
//       // navigation bar の高さをSizedBoxで調整
//       bottomNavigationBar: SizedBox(
//         height: 100,
//         child: NavigationBar(
//           // Riverpodを用いてscreen indexの状態管理
//           onDestinationSelected: (int index) {
//             final notifier = ref.read(screenIndexNotifierProvider.notifier);
//             notifier.updateState(index);
//           },
//           selectedIndex: currentScreenIndex,
//           // iconの種類
//           destinations: const [
//             NavigationDestination(
//               selectedIcon: Icon(Icons.home),
//               icon: Icon(Icons.home_outlined),
//               label: 'Home',
//             ),
//             NavigationDestination(
//               selectedIcon: Icon(Icons.timer),
//               icon: Icon(Icons.timer_outlined),
//               label: 'Timer',
//             ),
//             NavigationDestination(
//               selectedIcon: Icon(Icons.settings),
//               icon: Icon(Icons.settings_outlined),
//               label: 'Setting',
//             ),
//           ],
//         ),
//       ),
//       // それぞれのページのルート
//       body: [
//         const HomeScreen(),
//         const TimerScreen(),
//         const SettingsScreen(),
//       ][currentScreenIndex],
//     );
//   }
// }
