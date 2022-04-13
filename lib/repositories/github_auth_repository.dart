import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/api.dart';
import 'package:github_stats_flutter/model/entities/gthub_auth/github_auth.dart';

final gitHubAuthRepository = Provider(
  (ref) => GitHubAuthRepository(
    api: ref.watch(api),
  ),
);

class GitHubAuthRepository {
  const GitHubAuthRepository({required this.api});

  final Api api;

  Future<String> getToken() async {
    final response = await api.getGitHubToken();
    final auth = GitHubAuth.fromJsonString(response.body);
    return auth.token;
  }
}
