// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GithubStatsTearOff {
  const _$GithubStatsTearOff();

  _GithubStats call(
      {required int starsCount,
      required int commitsCount,
      required int pRsCount,
      required int issuesCount}) {
    return _GithubStats(
      starsCount: starsCount,
      commitsCount: commitsCount,
      pRsCount: pRsCount,
      issuesCount: issuesCount,
    );
  }
}

/// @nodoc
const $GithubStats = _$GithubStatsTearOff();

/// @nodoc
mixin _$GithubStats {
  int get starsCount => throw _privateConstructorUsedError;
  int get commitsCount => throw _privateConstructorUsedError;
  int get pRsCount => throw _privateConstructorUsedError;
  int get issuesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubStatsCopyWith<GithubStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubStatsCopyWith<$Res> {
  factory $GithubStatsCopyWith(
          GithubStats value, $Res Function(GithubStats) then) =
      _$GithubStatsCopyWithImpl<$Res>;
  $Res call({int starsCount, int commitsCount, int pRsCount, int issuesCount});
}

/// @nodoc
class _$GithubStatsCopyWithImpl<$Res> implements $GithubStatsCopyWith<$Res> {
  _$GithubStatsCopyWithImpl(this._value, this._then);

  final GithubStats _value;
  // ignore: unused_field
  final $Res Function(GithubStats) _then;

  @override
  $Res call({
    Object? starsCount = freezed,
    Object? commitsCount = freezed,
    Object? pRsCount = freezed,
    Object? issuesCount = freezed,
  }) {
    return _then(_value.copyWith(
      starsCount: starsCount == freezed
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as int,
      commitsCount: commitsCount == freezed
          ? _value.commitsCount
          : commitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pRsCount: pRsCount == freezed
          ? _value.pRsCount
          : pRsCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: issuesCount == freezed
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GithubStatsCopyWith<$Res>
    implements $GithubStatsCopyWith<$Res> {
  factory _$GithubStatsCopyWith(
          _GithubStats value, $Res Function(_GithubStats) then) =
      __$GithubStatsCopyWithImpl<$Res>;
  @override
  $Res call({int starsCount, int commitsCount, int pRsCount, int issuesCount});
}

/// @nodoc
class __$GithubStatsCopyWithImpl<$Res> extends _$GithubStatsCopyWithImpl<$Res>
    implements _$GithubStatsCopyWith<$Res> {
  __$GithubStatsCopyWithImpl(
      _GithubStats _value, $Res Function(_GithubStats) _then)
      : super(_value, (v) => _then(v as _GithubStats));

  @override
  _GithubStats get _value => super._value as _GithubStats;

  @override
  $Res call({
    Object? starsCount = freezed,
    Object? commitsCount = freezed,
    Object? pRsCount = freezed,
    Object? issuesCount = freezed,
  }) {
    return _then(_GithubStats(
      starsCount: starsCount == freezed
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as int,
      commitsCount: commitsCount == freezed
          ? _value.commitsCount
          : commitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pRsCount: pRsCount == freezed
          ? _value.pRsCount
          : pRsCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: issuesCount == freezed
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GithubStats implements _GithubStats {
  const _$_GithubStats(
      {required this.starsCount,
      required this.commitsCount,
      required this.pRsCount,
      required this.issuesCount});

  @override
  final int starsCount;
  @override
  final int commitsCount;
  @override
  final int pRsCount;
  @override
  final int issuesCount;

  @override
  String toString() {
    return 'GithubStats(starsCount: $starsCount, commitsCount: $commitsCount, pRsCount: $pRsCount, issuesCount: $issuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GithubStats &&
            const DeepCollectionEquality()
                .equals(other.starsCount, starsCount) &&
            const DeepCollectionEquality()
                .equals(other.commitsCount, commitsCount) &&
            const DeepCollectionEquality().equals(other.pRsCount, pRsCount) &&
            const DeepCollectionEquality()
                .equals(other.issuesCount, issuesCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(starsCount),
      const DeepCollectionEquality().hash(commitsCount),
      const DeepCollectionEquality().hash(pRsCount),
      const DeepCollectionEquality().hash(issuesCount));

  @JsonKey(ignore: true)
  @override
  _$GithubStatsCopyWith<_GithubStats> get copyWith =>
      __$GithubStatsCopyWithImpl<_GithubStats>(this, _$identity);
}

abstract class _GithubStats implements GithubStats {
  const factory _GithubStats(
      {required int starsCount,
      required int commitsCount,
      required int pRsCount,
      required int issuesCount}) = _$_GithubStats;

  @override
  int get starsCount;
  @override
  int get commitsCount;
  @override
  int get pRsCount;
  @override
  int get issuesCount;
  @override
  @JsonKey(ignore: true)
  _$GithubStatsCopyWith<_GithubStats> get copyWith =>
      throw _privateConstructorUsedError;
}
