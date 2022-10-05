import 'package:botoholt_flutter/utils/classes/color_palette.dart';
import 'package:botoholt_flutter/utils/enums/theme_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: prefer-match-file-name
class ColorNotifier extends StateNotifier<ColorPalette> {
  ColorNotifier() : super(const ColorPalette(theme: ThemeColors.light));

  void toggleTheme(ThemeColors theme) {
    state = state.copyWith(theme: theme);
  }
}

final colorsProvider = StateNotifierProvider<ColorNotifier, ColorPalette>(
  (_) => ColorNotifier(),
);
