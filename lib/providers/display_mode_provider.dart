import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _mobile = 600.0;
const _tablet = 1100.0;

enum DisplayMode {
  mobile,
  tablet,
  desktop,
}

DisplayMode getDisplayMode(double displayWidth) {
  if (displayWidth < _mobile) {
    return DisplayMode.mobile;
  } else if (displayWidth < _tablet) {
    return DisplayMode.tablet;
  } else {
    return DisplayMode.desktop;
  }
}

class DisplayModeStateNotifier extends StateNotifier<DisplayMode>
    with WidgetsBindingObserver {
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
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

final displayModeProvider =
    StateNotifierProvider<DisplayModeStateNotifier, DisplayMode>(
  (_) => DisplayModeStateNotifier(),
);
