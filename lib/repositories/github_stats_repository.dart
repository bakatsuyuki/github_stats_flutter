import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/gql/github_gpq.dart';
import 'package:github_stats_flutter/model/entities/github_stats/github_stats.dart';

final githubStatsRepository = Provider(
  (ref) => GithubStatsRepository(
    gitHubGQL: ref.watch(gitHubGQL),
  ),
);

class GithubStatsRepository {
  const GithubStatsRepository({required this.gitHubGQL});

  final GitHubGQL gitHubGQL;

  Future<GitHubStats> getStats() async {
    final response = await gitHubGQL.queryStats();
    if (response == null) {
      throw NullThrownError;
    }
    return gitHubStatsFromResponse(response);
  }

  GitHubStats gitHubStatsFromResponse(Map<String, dynamic> json) {
    final user = json['user'];
    final commitsCount =
        user['contributionsCollection']?['totalCommitContributions'] as int?;
    final openIssuesCount = user['openIssues']?['totalCount'] as int?;
    final closedIssuesCount = user['closedIssues']?['totalCount'] as int?;
    final repositoriesNodes = user['repositories']?['nodes'];
    final starCounts =
        repositoriesNodes?.map((e) => e['stargazers']['totalCount'] as int);
    return GitHubStats(
      commitsCount: commitsCount ?? 0,
      issuesCount: openIssuesCount ?? 0 + (closedIssuesCount ?? 0),
      pRsCount: user['pullRequests']?['totalCount'] as int? ?? 0,
      starsCount: starCounts?.reduce((value, element) => value + element) ?? 0,
    );
  }
}
