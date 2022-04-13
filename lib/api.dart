import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import 'const/urls.dart';

final api = Provider((_) => const Api());

class Api {
  const Api();

  Future<Response> getGitHubToken() => get(Uri.parse(Urls.authToken));
}
