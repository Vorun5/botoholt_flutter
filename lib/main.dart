import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/providers/theme_provider.dart';
import 'package:botoholt_flutter/utils/enums/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'main.g.dart';

void main() {
  // ignore: avoid-ignoring-return-values
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: avoid-ignoring-return-values
  LocaleSettings.useDeviceLocale();

  runApp(TranslationProvider(child: const ProviderScope(child: _MyApp())));
}

@swidget
Widget __myApp(BuildContext context) => MaterialApp(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: LocaleSettings.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      debugShowCheckedModeBanner: false,
      home: const _MyHomePage(),
    );

@hcwidget
Widget __myHomePage(BuildContext context, WidgetRef ref) {
  final trl = Translations.of(context);
  final mode = ref.watch(displayModeProvider);
  final colors = ref.watch(colorsProvider);

  return Scaffold(
    appBar: AppBar(
      actions: [
        PopupMenuButton(
          itemBuilder: (context) => ThemeColors.values
              .map(
                (theme) => PopupMenuItem(
                  value: theme,
                  onTap: () {
                    ref.read(colorsProvider.notifier).toggleTheme(theme);
                  },
                  child: Text(theme.name),
                ),
              )
              .toList(),
        ),
      ],
    ),
    body: ColoredBox(
      color: colors.primaryBackground,
      child: Center(
        child: Text(
          '${trl.title} ${mode.name}',
          style: TextStyle(
            color: colors.primaryText,
          ),
        ),
      ),
    ),
  );
}
