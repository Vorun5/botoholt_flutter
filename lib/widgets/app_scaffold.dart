import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/themes.dart';
import 'package:botoholt_flutter/widgets/tiles.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_scaffold.g.dart';

@hcwidget
Widget _appScaffold(
  BuildContext context,
  WidgetRef ref, {
  required Widget body,
}) {
  final a = 10;

  return ThemeSwitchingArea(
    child: Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: const Text(
            'Botoholt',
            style: TextStyle(fontSize: FontSize.big),
          ),
          onPressed: () => context.goNamed('home'),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: ThemeSwitcher.withTheme(
                builder: (context, switcher, theme) => IconButton(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(
                    theme == Themes.dark
                        ? Icons.nightlight_round
                        : Icons.wb_sunny,
                  ),
                  onPressed: () async {
                    final storage = await SharedPreferences.getInstance();
                    final res =
                        await storage.setBool('theme', theme != Themes.dark);
                    if (res) {
                      switcher.changeTheme(
                        isReversed: theme == Themes.dark,
                        theme:
                            theme == Themes.dark ? Themes.light : Themes.dark,
                      );
                    }
                  },
                ),
              ),
            ),
            Tiles(
              title: 'Language',
              icon: Icons.translate,
              children: AppLocale.values
                  .map(
                    (locale) => Tile(
                      title: locale.languageTag,
                      child: Flag.fromString(
                          locale.languageCode.toLowerCase() != 'en'
                              ? locale.languageCode
                              : 'GB',
                          height: 30,
                          width: 30),
                      onTap: () {
                        LocaleSettings.setLocale(locale);
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
      body: body,
    ),
  );
}
