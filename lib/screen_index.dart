import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'screen_index.g.dart';

@riverpod
class ScreenIndexNotifier extends _$ScreenIndexNotifier {
  @override
  int build() => 0;

  int updateState(int index) {
    state = index;
    return state;
  }
}
