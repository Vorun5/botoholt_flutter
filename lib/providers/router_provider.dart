import 'package:botoholt_flutter/pages/error_page/error_page.dart';
import 'package:botoholt_flutter/pages/home_page/home_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/history/streamer_history_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/main/streamer_main_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/queue/streamer_queue_page.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    navigatorKey: navigatorKey,
    routerNeglect: true,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (_, state) => const HomePage(),
      ),
      GoRoute(
        path: '/s/:name',
        name: 'streamer',
        builder: (_, state) {
          final name = state.params['name'];
          Future(() {
            final selectedStreamer = ref.read(selectedSteamerProvider);
            if (selectedStreamer != name) {
              ref.read(selectedSteamerProvider.notifier).state = name;
            }
          });

          return const StreamerMainPage();
        },
        routes: [
          GoRoute(
            path: 'q',
            name: 'queue',
            builder: (_, state) => const StreamerQueuePage(),
          ),
          GoRoute(
            path: 'h',
            name: 'history',
            builder: (_, state) => const StreamerHistoryPage(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
    // errorPageBuilder: (context, state) => ErrorPage(),
    // redirect: (context, state) {
    //   final areWeLoggingIn = state.location == '/login';
    //   final areWeSingUp = state.location == '/sing-up';

    //   if (!isAuth && areWeSingUp) {
    //     return null;
    //   }

    //   if (!isAuth) {
    //     return areWeLoggingIn ? null : '/login';
    //   }

    //   if (areWeLoggingIn || areWeSingUp) {
    //     return '/';
    //   }

    //   return null;
    // },
  ),
);
