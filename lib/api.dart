import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final api = Provider((_) => const Api());

class Api {
  const Api();

  Future<Response> getGitHubToken() => get(
        Uri.parse(
          'https://us-central1-github-stats-flutter.cloudfunctions.net/function-3',
        ),
      );
}
