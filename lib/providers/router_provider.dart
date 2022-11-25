import 'package:botoholt_flutter/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final navigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) =>
   GoRouter(
    navigatorKey: navigatorKey,
    routerNeglect: true,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (_, state) => const Home(),
      ),
    ],
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
