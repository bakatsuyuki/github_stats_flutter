import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

final gitHubGQL = Provider((ref) {
  return GitHubGQL(graphQLClient: ref.watch(_githubGraphQLClient));
});

final _githubGraphQLClient = Provider((_) {
  final apiToken = dotenv.env['API_TOKEN'];
  final Link _link = HttpLink(
    'https://api.github.com/graphql',
    defaultHeaders: {
      'Authorization': 'Bearer $apiToken',
    },
  );

  return GraphQLClient(
    cache: GraphQLCache(),
    link: _link,
  );
});

class GitHubGQL {
  const GitHubGQL({required this.graphQLClient});

  final GraphQLClient graphQLClient;

  Future<Map<String, dynamic>?> get queryStats async =>
      (await graphQLClient.query(options)).data;
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
