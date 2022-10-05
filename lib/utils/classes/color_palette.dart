import 'package:botoholt_flutter/utils/enums/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_palette.freezed.dart';

@freezed
class ColorPalette with _$ColorPalette {
  const factory ColorPalette({required ThemeColors theme}) = _ColorPaletten;
  const ColorPalette._();

  Color get primaryBackground {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 44, 46, 50);
      case ThemeColors.light:
        return const Color.fromARGB(255, 255, 255, 255);
    }
  }

  Color get secondaryBackground {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 46, 48, 54);
      case ThemeColors.light:
        return const Color.fromARGB(255, 218, 222, 224);
    }
  }

  Color get focusBackground {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 69, 73, 80);
      case ThemeColors.light:
        return const Color.fromARGB(255, 243, 243, 244);
    }
  }

  Color get primaryText {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 222, 222, 222);
      case ThemeColors.light:
        return const Color.fromARGB(255, 79, 87, 97);
    }
  }

  Color get secondaryText {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 154, 154, 154);
      case ThemeColors.light:
        return const Color.fromARGB(255, 96, 106, 116);
    }
  }

  Color get focusText {
    switch (theme) {
      case ThemeColors.dark:
        return const Color.fromARGB(255, 254, 254, 254);
      case ThemeColors.light:
        return const Color.fromARGB(255, 19, 19, 19);
    }
  }

  Color get primaryColor => const Color.fromARGB(255, 88, 101, 242);
}
