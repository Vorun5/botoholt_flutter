import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/providers/router_provider.dart';
import 'package:botoholt_flutter/utils/themes.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_strategy/url_strategy.dart'
;
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// import 'package:botoholt_flutter/utils/url_strategy_native.dart'
//     if (dart.library.html) 'package:botoholt_flutter/utils/url_strategy_web.dart';

part 'main.g.dart';

// TODO: заменить индикаторы загрузки на скелитон

// TODO: подключить сокеты

// TODO: добавить кнопку ScrollToTop

// TODO: попробовать сделать таблицы на ListView Builder

// TODO: разобраться почему адаптив не работает на андроиде

// TODO: страница с бигами

// TODO: FINALI сбилдить web проект и чилить

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  final storage = await SharedPreferences.getInstance();
  final locallyStoredLanguageCode = storage.getString('language');
  final locallyStoredLanguage = AppLocale.values
      .firstWhereOrNull((e) => e.languageCode == locallyStoredLanguageCode);
  if (locallyStoredLanguage != null) {
    LocaleSettings.setLocale(locallyStoredLanguage);
  } else {
    LocaleSettings.useDeviceLocale();
  }

  final isPlatformDark =
      WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
  final isDark = storage.getBool('theme');
  final initTheme = isDark ?? isPlatformDark ? Themes.dark : Themes.light;

  runApp(
    TranslationProvider(
      child: ThemeProvider(
        initTheme: initTheme,
        child: const ProviderScope(child: _App()),
      ),
    ),
  );

}

@hcwidget
Widget __app(BuildContext context, WidgetRef ref) {
  final router = ref.watch(routerProvider);

  return MaterialApp.router(
    scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
    theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
    debugShowCheckedModeBanner: false,
    localizationsDelegates: const [
      FormBuilderLocalizations.delegate,
      ...GlobalMaterialLocalizations.delegates,
    ],
    supportedLocales: LocaleSettings.supportedLocales,
    locale: TranslationProvider.of(context).flutterLocale,
    routeInformationParser: router.routeInformationParser,
    routerDelegate: router.routerDelegate,
    routeInformationProvider: router.routeInformationProvider,
  );
}
