import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/gql_client.dart';
import 'package:github_stats_flutter/model/entities/github_stats/github_stats.dart';
import 'package:graphql/client.dart';

final githubStatsRepository = Provider(
  (ref) => GithubStatsRepository(
    githubGraphQLClient: ref.watch(githubGraphQLClient),
  ),
);

class GithubStatsRepository {
  const GithubStatsRepository({required this.githubGraphQLClient});

  final GraphQLClient githubGraphQLClient;

  Future<GithubStats> getStats() async {
    final response = await githubGraphQLClient.query(options);
    return const GithubStats(sampleParam: '');
  }
}
