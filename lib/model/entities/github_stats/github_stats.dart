import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_stats.freezed.dart';

@freezed
abstract class GithubStats with _$GithubStats {
  const factory GithubStats({
    required String sampleParam,
  }) = _GithubStats;
}