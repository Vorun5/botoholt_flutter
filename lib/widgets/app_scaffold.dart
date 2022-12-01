import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/utils/themes.dart';
import 'package:botoholt_flutter/widgets/link.dart';
import 'package:botoholt_flutter/widgets/tiles.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_scaffold.g.dart';

@swidget
Widget _appScaffold(
  BuildContext context, {
  required Widget body,
}) {
  final i18n = Translations.of(context);

  return ThemeSwitchingArea(
    child: Title(
      title: 'Botoholt',
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          title: TextButton(
            child:
             Image.asset('assets/logo.png', height: 40,),

            // const Text(
            //   'Botoholt',
            //   style: TextStyle(fontSize: FontSize.big),
            // ),

            onPressed: () => context.goNamed('home'),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
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
                            final res = await storage.setBool(
                                'theme', theme != Themes.dark);
                            if (res) {
                              switcher.changeTheme(
                                isReversed: theme == Themes.dark,
                                theme: theme == Themes.dark
                                    ? Themes.light
                                    : Themes.dark,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Tiles(
                      title: i18n.appBar.language,
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
                                width: 30,
                              ),
                              onTap: () async {
                                final storage =
                                    await SharedPreferences.getInstance();
                                final result = await storage.setString(
                                    'language', locale.languageCode);
                                if (result) {
                                  LocaleSettings.setLocale(locale);
                                }
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Paddings.small),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    children: [
                      Divider(),
                      Text(i18n.mention.created),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Link(
                            text: '@Vorun5',
                            link: 'https://www.twitch.tv/vorun5',
                          ),
                          Text(i18n.mention.and),
                          Link(
                            text: '@Urbinholt',
                            link: 'https://www.twitch.tv/urbinholt',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/dance/pepeEvil.png',
                            height: 30,
                            width: 30,
                          ),
                          Gaps.small,
                          Image.asset(
                            'assets/dance/HACKERMANS.gif',
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                      Link(
                        text: i18n.mention.support,
                        link: 'https://get.capusta.space/botoholt',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            padding: const EdgeInsets.only(left: Paddings.small),
            child: body,
          ),
        ),
      ),
    ),
  );
}
