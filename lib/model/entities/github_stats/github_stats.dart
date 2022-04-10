import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_stats.freezed.dart';

@freezed
abstract class GitHubStats with _$GitHubStats {
  const factory GitHubStats({
    required int starsCount,
    required int commitsCount,
    required int pRsCount,
    required int issuesCount,
  }) = _GitHubStats;
}
