// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'original_timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OriginalTimer {
// タイマーのタイトル
  String get title => throw _privateConstructorUsedError; // 設定した時間(時間、分、秒)
  String get hours => throw _privateConstructorUsedError;
  String get minutes => throw _privateConstructorUsedError;
  String get seconds => throw _privateConstructorUsedError; // タイマーが実行中かどうか
  bool get isActive => throw _privateConstructorUsedError; // [追加機能予定]タイマーのカテゴリ
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OriginalTimerCopyWith<OriginalTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginalTimerCopyWith<$Res> {
  factory $OriginalTimerCopyWith(
          OriginalTimer value, $Res Function(OriginalTimer) then) =
      _$OriginalTimerCopyWithImpl<$Res, OriginalTimer>;
  @useResult
  $Res call(
      {String title,
      String hours,
      String minutes,
      String seconds,
      bool isActive,
      String category});
}

/// @nodoc
class _$OriginalTimerCopyWithImpl<$Res, $Val extends OriginalTimer>
    implements $OriginalTimerCopyWith<$Res> {
  _$OriginalTimerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? isActive = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OriginalTimerCopyWith<$Res>
    implements $OriginalTimerCopyWith<$Res> {
  factory _$$_OriginalTimerCopyWith(
          _$_OriginalTimer value, $Res Function(_$_OriginalTimer) then) =
      __$$_OriginalTimerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String hours,
      String minutes,
      String seconds,
      bool isActive,
      String category});
}

/// @nodoc
class __$$_OriginalTimerCopyWithImpl<$Res>
    extends _$OriginalTimerCopyWithImpl<$Res, _$_OriginalTimer>
    implements _$$_OriginalTimerCopyWith<$Res> {
  __$$_OriginalTimerCopyWithImpl(
      _$_OriginalTimer _value, $Res Function(_$_OriginalTimer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? isActive = null,
    Object? category = null,
  }) {
    return _then(_$_OriginalTimer(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OriginalTimer implements _OriginalTimer {
  const _$_OriginalTimer(
      {required this.title,
      required this.hours,
      required this.minutes,
      required this.seconds,
      this.isActive = false,
      this.category = 'none'});

// タイマーのタイトル
  @override
  final String title;
// 設定した時間(時間、分、秒)
  @override
  final String hours;
  @override
  final String minutes;
  @override
  final String seconds;
// タイマーが実行中かどうか
  @override
  @JsonKey()
  final bool isActive;
// [追加機能予定]タイマーのカテゴリ
  @override
  @JsonKey()
  final String category;

  @override
  String toString() {
    return 'OriginalTimer(title: $title, hours: $hours, minutes: $minutes, seconds: $seconds, isActive: $isActive, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OriginalTimer &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, hours, minutes, seconds, isActive, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OriginalTimerCopyWith<_$_OriginalTimer> get copyWith =>
      __$$_OriginalTimerCopyWithImpl<_$_OriginalTimer>(this, _$identity);
}

abstract class _OriginalTimer implements OriginalTimer {
  const factory _OriginalTimer(
      {required final String title,
      required final String hours,
      required final String minutes,
      required final String seconds,
      final bool isActive,
      final String category}) = _$_OriginalTimer;

  @override // タイマーのタイトル
  String get title;
  @override // 設定した時間(時間、分、秒)
  String get hours;
  @override
  String get minutes;
  @override
  String get seconds;
  @override // タイマーが実行中かどうか
  bool get isActive;
  @override // [追加機能予定]タイマーのカテゴリ
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_OriginalTimerCopyWith<_$_OriginalTimer> get copyWith =>
      throw _privateConstructorUsedError;
}
