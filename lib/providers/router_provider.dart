import 'dart:js';

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
import 'package:botoholt_flutter/utils/page_transition.dart';
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
        pageBuilder: (context, state) => PageTransition(
          context: context,
          state: state,
          child: const HomePage(),
        ),
      ),
      GoRoute(
        path: '/:name',
        name: 'streamer',
        pageBuilder: (context, state) {
          final name = state.params['name'];
          Future(() {
            final selectedStreamer = ref.read(selectedSteamerProvider);
            if (selectedStreamer != name) {
              ref.read(selectedSteamerProvider.notifier).state = name;
            }
          });

          return PageTransition(
            context: context,
            state: state,
            child: const StreamerMainPage(),
          );
        },
        routes: [
          GoRoute(
            path: 'q',
            name: 'queue',
            pageBuilder: (context, state) => PageTransition(
              context: context,
              state: state,
              child: StreamerQueuePage(state.params['name']),
            ),
          ),
          GoRoute(
            path: 'h',
            name: 'history',
            pageBuilder: (context, state) => PageTransition(
              context: context,
              state: state,
              child: StreamerHistoryPage(state.params['name']),
            ),
          ),
          GoRoute(
            path: 'top/songs/alltime',
            name: 'top-songs-alltime',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.alltime;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerSongsPage(state.params['name']),
              );
            },
          ),
          GoRoute(
            path: 'top/songs/month',
            name: 'top-songs-month',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.month;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerSongsPage(state.params['name']),
              );
            },
          ),
          GoRoute(
            path: 'top/songs/week',
            name: 'top-songs-week',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopSongsProvider.notifier).state =
                    Period.week;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerSongsPage(state.params['name']),
              );
            },
          ),
          GoRoute(
            path: 'top/djs/alltime',
            name: 'top-djs-alltime',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.alltime;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerTopDJsPage(state.params['name']),
              );
            },
          ),
          GoRoute(
            path: 'top/djs/month',
            name: 'top-djs-month',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.month;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerTopDJsPage(state.params['name']),
              );
            },
          ),
          GoRoute(
            path: 'top/djs/week',
            name: 'top-djs-week',
            pageBuilder: (context, state) {
              Future(() {
                ref.read(selectedPeriodTopDJsProvider.notifier).state =
                    Period.week;
              });

              return PageTransition(
                context: context,
                state: state,
                child: StreamerTopDJsPage(state.params['name']),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  ),
);
