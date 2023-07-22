import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_demo/presentation/notifications.dart';
import 'package:navigation_demo/presentation/subpage1.dart';
import 'presentation/settings.dart';
import 'presentation/shell/shell.dart';
import 'presentation/page1.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorAKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellA');
final GlobalKey<NavigatorState> _shellNavigatorBKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellB');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/page1",
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/page1",
              parentNavigatorKey: _shellNavigatorAKey,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: PageOne(),
              ),
              routes: [
                GoRoute(
                  path: "sub",
                  builder: (context, state) => const SubPageOne(),
                )
              ]
            ),
          ],
          navigatorKey: _shellNavigatorAKey,
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/page2",
              pageBuilder: (context, state) => const NoTransitionPage(
                child: PageTwo(),
              ),
            )
          ],
          navigatorKey: _shellNavigatorBKey,
        )
      ],
      builder: (context, state, navigationShell) {
        return ShellScreen(navigationShell: navigationShell);
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/notifications",
      builder: (context, state) => const NotificationsScreen(),
    ),
  ],
);
