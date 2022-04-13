import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_auth.freezed.dart';

part 'github_auth.g.dart';

@freezed
abstract class GitHubAuth with _$GitHubAuth {
  const factory GitHubAuth({
    required String token,
  }) = _GitHubAuth;

  factory GitHubAuth.fromJson(Map<String, dynamic> json) =>
      _$GitHubAuthFromJson(json);

  factory GitHubAuth.fromJsonString(String jsonString) => GitHubAuth.fromJson(
        json.decode(jsonString),
      );
}
