import 'package:freezed_annotation/freezed_annotation.dart';

part 'original_timer.freezed.dart';

@freezed
class OriginalTimer with _$OriginalTimer {
  const factory OriginalTimer({
    // タイマーのタイトル
    required String title,
    // 設定した時間(時間、分、秒)
    required String hours,
    required String minutes,
    required String seconds,
    // タイマーが実行中かどうか
    @Default(false) bool isActive,
    // [追加機能予定]タイマーのカテゴリ
    @Default('none') String category,
  }) = _OriginalTimer;
}
