import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/router.dart';
import 'package:provider/provider.dart';

import 'app.dart';

// TODO(genix): add "empty" language selection
// TODO(genix): add displaying version
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => GithubStatsProvider()),
      ChangeNotifierProvider(create: (_) => StackOverflowStatsProvider()),
    ],
    child: App(
      router: router,
    ),
  ));
}
