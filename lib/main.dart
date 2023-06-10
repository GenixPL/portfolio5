import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/router.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => GithubStatsProvider(),
      ),
    ],
    child: App(
      router: router,
    ),
  ));
}
