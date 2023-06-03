import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';
import 'package:portfolio5/widgets/_widgets.dart';

import 'app.dart';

void main() {
  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      ShellRoute(
        routes: <GoRoute>[
          GoRoute(
            path: '/',
            name: HomeScreen.routeName,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return _defaultPageBuilder(
                child: const HomeScreen(),
              );
            },
          ),
          GoRoute(
            path: '/screen1',
            name: Screen1.routeName,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return _defaultPageBuilder(
                child: const Screen1(),
              );
            },
          ),
          GoRoute(
            path: '/screen2',
            name: Screen2.routeName,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return _defaultPageBuilder(
                child: const Screen2(),
              );
            },
          ),
        ],
        pageBuilder: (BuildContext context, GoRouterState state, Widget child) {
          return _defaultPageBuilder(
            child: Shell(
              child: child,
            ),
          );
        },
      ),
    ],
  );

  runApp(App(
    router: router,
  ));
}

CustomTransitionPage _defaultPageBuilder({
  required Widget child,
}) {
  return NoTransitionPage(
    child: child,
  );
}
