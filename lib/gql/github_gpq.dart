import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

final gitHubGQL = Provider((_) => const GitHubGQL());

class GitHubGQL {
  const GitHubGQL();

  Future<Map<String, dynamic>?> queryStats(String token) async {
    final response = await _getClient(token).query(options);
    return response.data;
  }

  GraphQLClient _getClient(String token) {
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
