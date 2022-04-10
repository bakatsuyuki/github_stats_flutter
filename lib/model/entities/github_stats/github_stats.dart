import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_stats.freezed.dart';

@freezed
abstract class GithubStats with _$GithubStats {
  const factory GithubStats({
    required int starsCount,
    required int commitsCount,
    required int pRsCount,
    required int issuesCount,
  }) = _GithubStats;
}
