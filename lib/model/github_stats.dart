import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/repositories/github_stats_repository.dart';

final gitHubStats = FutureProvider(
  (ref) => ref.watch(githubStatsRepository).getStats(),
);
