import 'package:botoholt_flutter/pages/error_page/error_page.dart';
import 'package:botoholt_flutter/pages/home_page/home_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/history/streamer_history_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/main/streamer_main_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/queue/streamer_queue_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/top_djs/streamer_top_djs_page.dart';
import 'package:botoholt_flutter/pages/streamer_page/top_songs/streamer_top_songs_page.dart';
import 'package:botoholt_flutter/providers/selected_period_top_djs_provider.dart';
import 'package:botoholt_flutter/providers/selected_period_top_songs_provider.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:botoholt_flutter/utils/periods.dart';
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
          GoRoute(
            path: 'top/songs/alltime',
            name: 'top-songs-alltime',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.alltime;
              });

              return StreamerSongsPage(state.params['name']);
            },
          ),
          GoRoute(
            path: 'top/songs/month',
            name: 'top-songs-month',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.month;
              });

              return StreamerSongsPage(state.params['name']);
            },
          ),
          GoRoute(
            path: 'top/songs/week',
            name: 'top-songs-week',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.week;
              });

              return StreamerSongsPage(state.params['name']);
            },
          ),
          GoRoute(
            path: 'top/djs/alltime',
            name: 'top-djs-alltime',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.alltime;
              });

              return StreamerTopDJsPage(state.params['name']);
            },
          ),
          GoRoute(
            path: 'top/djs/month',
            name: 'top-djs-month',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.month;
              });

              return StreamerTopDJsPage(state.params['name']);
            },
          ),
          GoRoute(
            path: 'top/djs/week',
            name: 'top-djs-week',
            builder: (_, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.week;
              });

              return StreamerTopDJsPage(state.params['name']);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  ),
);
