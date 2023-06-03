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
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: '/screen1',
            name: Screen1.routeName,
            builder: (BuildContext context, GoRouterState state) {
              return const Screen1();
            },
          ),
          GoRoute(
            path: '/screen2',
            name: Screen2.routeName,
            builder: (BuildContext context, GoRouterState state) {
              return const Screen2();
            },
          ),
        ],
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return Shell(
            child: child,
          );
        },
      ),
    ],
  );

  runApp(App(
    router: router,
  ));
}
