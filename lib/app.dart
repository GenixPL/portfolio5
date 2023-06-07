import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/styles/_styles.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.router,
  });

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: getThemeData(),
      routerConfig: router,
    );
  }
}
