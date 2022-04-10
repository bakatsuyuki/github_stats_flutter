import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_stats_flutter/model/github_stats.dart';

Future<void> main() async {
  await dotenv.load(fileName: "production.env");
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
              data: (data) => Text(
                  'Commits: ${data.commitsCount}, PRs: ${data.pRsCount}, Issues: ${data.issuesCount}, Stars: ${data.starsCount}, '),
              error: (_, __) => const Text('Sorry, some error occurred.'),
              loading: () => const CircularProgressIndicator(),
            ),
      ),
    );
  }
}
