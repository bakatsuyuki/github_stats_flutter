import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                data: (data) => SizedBox(
                  height: 120,
                  width: 120,
                  child: Column(
                    children: [
                      _SingleStatus('Commits:', data.commitsCount),
                      _SingleStatus('PRs:', data.pRsCount),
                      _SingleStatus('Issues:', data.issuesCount),
                      _SingleStatus('Stars:', data.starsCount),
                    ],
                  ),
                ),
                error: (_, __) => const Text('Sorry, some error occurred.'),
                loading: () => const CircularProgressIndicator(),
              )),
    );
  }
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
