import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_stats.freezed.dart';

@freezed
abstract class GithubStats with _$GithubStats {
  const factory GithubStats({
    required int starsCount,
    required int commitsCount,
    required int pRsCount,
    required int issuesCount,
  }) = _GithubStats;

  factory GithubStats.fromGQLJson(Map<String, dynamic> json) {
    final user = json['user'];
    final repositoriesNodes =
        user['repositories']?['nodes'] as List<Map<String, dynamic>>?;
    return GithubStats(
      commitsCount: user['contributionsCollection']?['totalCommitContributions']
              as int? ??
          0,
      issuesCount: user['openIssues']?['totalCount'] as int? ??
          0 + user['closedIssues']?['totalCount'] as int? ??
          0,
      pRsCount: user['pullRequests']?['totalCount'] as int? ?? 0,
      starsCount: repositoriesNodes
              ?.map((e) => e['stargazers']['totalCount'] as int)
              .sum ??
          0,
    );
  }
}
