// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubAuth _$GitHubAuthFromJson(Map<String, dynamic> json) {
  return _GitHubAuth.fromJson(json);
}

/// @nodoc
class _$GitHubAuthTearOff {
  const _$GitHubAuthTearOff();

  _GitHubAuth call({required String token}) {
    return _GitHubAuth(
      token: token,
    );
  }

  GitHubAuth fromJson(Map<String, Object?> json) {
    return GitHubAuth.fromJson(json);
  }
}

/// @nodoc
const $GitHubAuth = _$GitHubAuthTearOff();

/// @nodoc
mixin _$GitHubAuth {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubAuthCopyWith<GitHubAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubAuthCopyWith<$Res> {
  factory $GitHubAuthCopyWith(
          GitHubAuth value, $Res Function(GitHubAuth) then) =
      _$GitHubAuthCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$GitHubAuthCopyWithImpl<$Res> implements $GitHubAuthCopyWith<$Res> {
  _$GitHubAuthCopyWithImpl(this._value, this._then);

  final GitHubAuth _value;
  // ignore: unused_field
  final $Res Function(GitHubAuth) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GitHubAuthCopyWith<$Res> implements $GitHubAuthCopyWith<$Res> {
  factory _$GitHubAuthCopyWith(
          _GitHubAuth value, $Res Function(_GitHubAuth) then) =
      __$GitHubAuthCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$GitHubAuthCopyWithImpl<$Res> extends _$GitHubAuthCopyWithImpl<$Res>
    implements _$GitHubAuthCopyWith<$Res> {
  __$GitHubAuthCopyWithImpl(
      _GitHubAuth _value, $Res Function(_GitHubAuth) _then)
      : super(_value, (v) => _then(v as _GitHubAuth));

  @override
  _GitHubAuth get _value => super._value as _GitHubAuth;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_GitHubAuth(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubAuth implements _GitHubAuth {
  const _$_GitHubAuth({required this.token});

  factory _$_GitHubAuth.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubAuthFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'GitHubAuth(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GitHubAuth &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$GitHubAuthCopyWith<_GitHubAuth> get copyWith =>
      __$GitHubAuthCopyWithImpl<_GitHubAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubAuthToJson(this);
  }
}

abstract class _GitHubAuth implements GitHubAuth {
  const factory _GitHubAuth({required String token}) = _$_GitHubAuth;

  factory _GitHubAuth.fromJson(Map<String, dynamic> json) =
      _$_GitHubAuth.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$GitHubAuthCopyWith<_GitHubAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
