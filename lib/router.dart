import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';
import 'package:portfolio5/widgets/_widgets.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      routes: <GoRoute>[
        GoRoute(
          path: HomeScreen.path,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return _defaultPageBuilder(
              child: const HomeScreen(),
            );
          },
        ),
        GoRoute(
          path: PortfolioScreen.path,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return _defaultPageBuilder(
              child: const PortfolioScreen(),
            );
          },
        ),
        GoRoute(
          path: AboutScreen.path,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return _defaultPageBuilder(
              child: const AboutScreen(),
            );
          },
        ),
        GoRoute(
          path: ContactScreen.path,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return _defaultPageBuilder(
              child: const ContactScreen(),
            );
          },
        ),
      ],
      pageBuilder: (BuildContext context, GoRouterState state, Widget child) {
        return _defaultPageBuilder(
          child: Shell(
            currentRouteName: state.location,
            child: child,
          ),
        );
      },
    ),
  ],
);

CustomTransitionPage _defaultPageBuilder({
  required Widget child,
}) {
  return NoTransitionPage<Widget>(
    child: child,
  );
}
