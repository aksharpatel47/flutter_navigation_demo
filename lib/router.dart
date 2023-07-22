import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_demo/presentation/notifications.dart';
import 'presentation/page2.dart';
import 'presentation/shell/shell.dart';
import 'presentation/page1.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/page1",
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => ShellScreen(
        child: child,
      ),
      routes: [
        GoRoute(
          path: "/page1",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const PageOne(),
        ),
        GoRoute(
          path: "/page2",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const PageTwo(),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/notifications",
      builder: (context, state) => const NotificationsScreen(),
    ),
  ],
);
