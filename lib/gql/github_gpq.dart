import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/api.dart';
import 'package:github_stats_flutter/const/queries.dart';
import 'package:github_stats_flutter/model/entities/gthub_auth/github_auth.dart';
import 'package:graphql/client.dart';

import '../const/urls.dart';

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
    return GraphQLClient(
      cache: GraphQLCache(),
      link: await _createLink(),
    );
  }

  Future<String> _getToken() async {
    final response = await api.getGitHubToken();
    final auth = GitHubAuth.fromJsonString(response.body);
    return auth.token;
  }

  Future<Link> _createLink() async {
    final token = await _getToken();
    return HttpLink(
      Urls.gitHubGQL,
      defaultHeaders: {
        'Authorization': 'Bearer $token',
      },
    );
  }
}

final QueryOptions options = QueryOptions(
  document: gql(Queries.stats),
  variables: const {
    'login': 'bakatsuyuki',
  },
);
