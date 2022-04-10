import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_stats_flutter/gql/github_gpq.dart';
import 'package:github_stats_flutter/model/entities/github_stats/github_stats.dart';
import 'package:github_stats_flutter/model/github_stats.dart';
import 'package:mockito/mockito.dart';

import '../helper/github_graphql_response.dart';
import '../helper/mocks/gql/gql.mocks.dart';

void main() {
  late MockGitHubGQL _gitHubGQL;
  late ProviderContainer _container;
  setUp(() {
    _gitHubGQL = MockGitHubGQL();
    _container = ProviderContainer(
      overrides: [
        gitHubGQL.overrideWithValue(_gitHubGQL),
      ],
    );

    when(_gitHubGQL.queryStats()).thenAnswer((_) async => responseMap);
  });

  test('gitHubStats', () async {
    final target = await _container.read(gitHubStats.future);
    expect(
      target,
      const GitHubStats(
        starsCount: 1,
        commitsCount: 2005,
        pRsCount: 180,
        issuesCount: 3,
      ),
    );
  });
}
