import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/api.dart';
import 'package:github_stats_flutter/model/entities/gthub_auth/github_auth.dart';
import 'package:graphql/client.dart';

final gitHubGQL = Provider((_) => const GitHubGQL());

class GitHubGQL {
  const GitHubGQL();

  final Api api = const Api();

  Future<Map<String, dynamic>?> queryStats() async {
    final client = await _getClient();
    final response = await client.query(options);
    return response.data;
  }

  Future<GraphQLClient> _getClient() async {
    final token = await _getToken();
    final Link _link = HttpLink(
      'https://api.github.com/graphql',
      defaultHeaders: {
        'Authorization': 'Bearer $token',
      },
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );
  }

  Future<String> _getToken() async {
    final response = await api.getGitHubToken();
    final auth = GitHubAuth.fromJsonString(response.body);
    return auth.token;
  }
}

final QueryOptions options = QueryOptions(
  document: gql(
    r'''
        query userInfo($login: String!) {
        user(login: $login) {
          name
          login
          contributionsCollection {
            totalCommitContributions
            restrictedContributionsCount
          }
          repositoriesContributedTo(first: 1, contributionTypes: [COMMIT, ISSUE, PULL_REQUEST, REPOSITORY]) {
            totalCount
          }
          pullRequests(first: 1) {
            totalCount
          }
          openIssues: issues(states: OPEN) {
            totalCount
          }
          closedIssues: issues(states: CLOSED) {
            totalCount
          }
          followers {
            totalCount
          }
          repositories(first: 100, ownerAffiliations: OWNER, orderBy: {direction: DESC, field: STARGAZERS}) {
            totalCount
            nodes {
              stargazers {
                totalCount
              }
            }
          }
        }
      }
      ''',
  ),
  variables: const {
    'login': 'bakatsuyuki',
  },
);
