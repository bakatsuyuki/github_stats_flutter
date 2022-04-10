import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_stats_flutter/gql/git_hub_gpq.dart';
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
}
