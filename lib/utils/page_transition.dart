import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage PageTransition<T>({
  required BuildContext context, 
  required GoRouterState state, 
  required Widget child,
}) {
  return NoTransitionPage<T>(
    key: state.pageKey,
    child: child,
  );
}