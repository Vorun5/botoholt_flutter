import 'package:botoholt_flutter/utils/enums/display_mode.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _mobile = 600.0;
const _tablet = 1100.0;

DisplayMode getDisplayMode(double displayWidth) {
  if (displayWidth < _mobile) {
    return DisplayMode.mobile;
  } else if (displayWidth < _tablet) {
    return DisplayMode.tablet;
  } else {
    return DisplayMode.desktop;
  }
}

// ignore: prefer-match-file-name
class DisplayModeStateNotifier extends StateNotifier<DisplayMode>
    with
        // ignore: prefer_mixin
        WidgetsBindingObserver {
  DisplayModeStateNotifier()
      : super(
          getDisplayMode(WidgetsBinding.instance.window.physicalSize.width),
        ) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    state = getDisplayMode(WidgetsBinding.instance.window.physicalSize.width);
  }

  @override
  void dispose() {
    // ignore: avoid-ignoring-return-values
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

final displayModeProvider =
    StateNotifierProvider<DisplayModeStateNotifier, DisplayMode>(
  (_) => DisplayModeStateNotifier(),
);
