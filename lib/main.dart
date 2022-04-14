import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/model/entities/github_stats/github_stats.dart';
import 'package:github_stats_flutter/model/github_stats.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'marukiya',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Center(
          child: ref.watch(gitHubStats).when(
                data: (data) => _Stats(gitHubStats: data),
                error: (_, __) => const Text('Sorry, some error occurred.'),
                loading: () => const CircularProgressIndicator(),
              )),
    );
  }
}

class _Stats extends StatelessWidget {
  const _Stats({
    Key? key,
    required this.gitHubStats,
  }) : super(key: key);

  final GitHubStats gitHubStats;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 120,
        width: 140,
        child: Column(
          children: [
            _SingleStatus('Commits:', gitHubStats.commitsCount),
            _SingleStatus('PRs:', gitHubStats.pRsCount),
            _SingleStatus('Issues:', gitHubStats.issuesCount),
            _SingleStatus('Stars:', gitHubStats.starsCount),
          ],
        ),
      );
}

class _SingleStatus extends StatelessWidget {
  const _SingleStatus(
    this.label,
    this.value, {
    Key? key,
  }) : super(key: key);

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Expanded(child: Text(label)), Text(value.toString())],
    );
  }
}
