import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/repositories/git_hub_stats_repository.dart';

final gitHubStats = FutureProvider(
  (ref) => ref.watch(githubStatsRepository).getStats(),
);
