import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/gql/git_hub_gpq.dart';
import 'package:github_stats_flutter/model/entities/github_stats/github_stats.dart';

final githubStatsRepository = Provider(
  (ref) => GithubStatsRepository(
    gitHubGQL: ref.watch(gitHubGQL),
  ),
);

class GithubStatsRepository {
  const GithubStatsRepository({required this.gitHubGQL});

  final GitHubGQL gitHubGQL;

  Future<GithubStats> getStats() async {
    final response = gitHubGQL.queryStats;
    return const GithubStats(
      commitsCount: 0,
      issuesCount: 0,
      pRsCount: 0,
      starsCount: 0,
    );
  }
}
