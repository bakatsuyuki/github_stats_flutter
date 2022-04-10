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
class _$GitHubStatsTearOff {
  const _$GitHubStatsTearOff();

  _GitHubStats call(
      {required int starsCount,
      required int commitsCount,
      required int pRsCount,
      required int issuesCount}) {
    return _GitHubStats(
      starsCount: starsCount,
      commitsCount: commitsCount,
      pRsCount: pRsCount,
      issuesCount: issuesCount,
    );
  }
}

/// @nodoc
const $GitHubStats = _$GitHubStatsTearOff();

/// @nodoc
mixin _$GitHubStats {
  int get starsCount => throw _privateConstructorUsedError;
  int get commitsCount => throw _privateConstructorUsedError;
  int get pRsCount => throw _privateConstructorUsedError;
  int get issuesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GitHubStatsCopyWith<GitHubStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubStatsCopyWith<$Res> {
  factory $GitHubStatsCopyWith(
          GitHubStats value, $Res Function(GitHubStats) then) =
      _$GitHubStatsCopyWithImpl<$Res>;
  $Res call({int starsCount, int commitsCount, int pRsCount, int issuesCount});
}

/// @nodoc
class _$GitHubStatsCopyWithImpl<$Res> implements $GitHubStatsCopyWith<$Res> {
  _$GitHubStatsCopyWithImpl(this._value, this._then);

  final GitHubStats _value;
  // ignore: unused_field
  final $Res Function(GitHubStats) _then;

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
abstract class _$GitHubStatsCopyWith<$Res>
    implements $GitHubStatsCopyWith<$Res> {
  factory _$GitHubStatsCopyWith(
          _GitHubStats value, $Res Function(_GitHubStats) then) =
      __$GitHubStatsCopyWithImpl<$Res>;
  @override
  $Res call({int starsCount, int commitsCount, int pRsCount, int issuesCount});
}

/// @nodoc
class __$GitHubStatsCopyWithImpl<$Res> extends _$GitHubStatsCopyWithImpl<$Res>
    implements _$GitHubStatsCopyWith<$Res> {
  __$GitHubStatsCopyWithImpl(
      _GitHubStats _value, $Res Function(_GitHubStats) _then)
      : super(_value, (v) => _then(v as _GitHubStats));

  @override
  _GitHubStats get _value => super._value as _GitHubStats;

  @override
  $Res call({
    Object? starsCount = freezed,
    Object? commitsCount = freezed,
    Object? pRsCount = freezed,
    Object? issuesCount = freezed,
  }) {
    return _then(_GitHubStats(
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

class _$_GitHubStats implements _GitHubStats {
  const _$_GitHubStats(
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
    return 'GitHubStats(starsCount: $starsCount, commitsCount: $commitsCount, pRsCount: $pRsCount, issuesCount: $issuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GitHubStats &&
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
  _$GitHubStatsCopyWith<_GitHubStats> get copyWith =>
      __$GitHubStatsCopyWithImpl<_GitHubStats>(this, _$identity);
}

abstract class _GitHubStats implements GitHubStats {
  const factory _GitHubStats(
      {required int starsCount,
      required int commitsCount,
      required int pRsCount,
      required int issuesCount}) = _$_GitHubStats;

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
  _$GitHubStatsCopyWith<_GitHubStats> get copyWith =>
      throw _privateConstructorUsedError;
}
