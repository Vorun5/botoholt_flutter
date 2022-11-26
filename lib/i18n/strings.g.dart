/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 44 (22 per locale)
///
/// Built on 2022-11-26 at 22:51 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	ru(languageCode: 'ru', build: _StringsRu.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsAppBarEn appBar = _StringsAppBarEn._(_root);
	late final _StringsStreamerEn streamer = _StringsStreamerEn._(_root);
	late final _StringsFormEn form = _StringsFormEn._(_root);
	late final _StringsTimesEn times = _StringsTimesEn._(_root);
	String get error => 'Error';
	String get notConnectedToBotoholt => 'This streamer is not connected to Botoholt😪';
	String get pageNotFound404 => 'Page not found\n404';
	String get somethingWentWrong => 'Что-то пошло не так(F5)🤔';
}

// Path: appBar
class _StringsAppBarEn {
	_StringsAppBarEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get language => 'Language';
	String get logOut => 'Log Out';
}

// Path: streamer
class _StringsStreamerEn {
	_StringsStreamerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsStreamerTabsEn tabs = _StringsStreamerTabsEn._(_root);
	late final _StringsStreamerQueueEn queue = _StringsStreamerQueueEn._(_root);
}

// Path: form
class _StringsFormEn {
	_StringsFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get search => 'Search';
}

// Path: times
class _StringsTimesEn {
	_StringsTimesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get minutes => 'm';
	String get seconds => 's';
	String get hours => 'h';
}

// Path: streamer.tabs
class _StringsStreamerTabsEn {
	_StringsStreamerTabsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get queue => 'Queue';
	String get history => 'History';
	String get topDJs => 'Top DJs';
	String get topSongs => 'Top Songs';
	String get month => 'Month';
	String get allTime => 'All Time';
	String get week => 'Цeek';
}

// Path: streamer.queue
class _StringsStreamerQueueEn {
	_StringsStreamerQueueEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get nowPlaying => 'Now playing:';
	String willStillPlay({required Object time}) => 'Still going to play for about ${time}';
	String get onPause => 'On pause';
	String get songsOnPause => 'Songs on pause.';
	String get lastSong => 'Last Song:';
}

// Path: <root>
class _StringsRu implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAppBarRu appBar = _StringsAppBarRu._(_root);
	@override late final _StringsStreamerRu streamer = _StringsStreamerRu._(_root);
	@override late final _StringsFormRu form = _StringsFormRu._(_root);
	@override late final _StringsTimesRu times = _StringsTimesRu._(_root);
	@override String get error => 'Error';
	@override String get notConnectedToBotoholt => 'Этот стрим не подключен к Botoholt😪';
	@override String get pageNotFound404 => 'Страница не найдена\n404';
	@override String get somethingWentWrong => 'Something went wrong (F5)🤔';
}

// Path: appBar
class _StringsAppBarRu implements _StringsAppBarEn {
	_StringsAppBarRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get language => 'Язык';
	@override String get logOut => 'Выйти';
}

// Path: streamer
class _StringsStreamerRu implements _StringsStreamerEn {
	_StringsStreamerRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsStreamerTabsRu tabs = _StringsStreamerTabsRu._(_root);
	@override late final _StringsStreamerQueueRu queue = _StringsStreamerQueueRu._(_root);
}

// Path: form
class _StringsFormRu implements _StringsFormEn {
	_StringsFormRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get search => 'Поиск';
}

// Path: times
class _StringsTimesRu implements _StringsTimesEn {
	_StringsTimesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get minutes => 'м';
	@override String get seconds => 'с';
	@override String get hours => 'ч';
}

// Path: streamer.tabs
class _StringsStreamerTabsRu implements _StringsStreamerTabsEn {
	_StringsStreamerTabsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get queue => 'Очередь';
	@override String get history => 'История';
	@override String get topDJs => 'Топ Диджеев';
	@override String get topSongs => 'Топ песен';
	@override String get month => 'Месяц';
	@override String get allTime => 'Всё время';
	@override String get week => 'Неделя';
}

// Path: streamer.queue
class _StringsStreamerQueueRu implements _StringsStreamerQueueEn {
	_StringsStreamerQueueRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get nowPlaying => 'Сейчас играет:';
	@override String willStillPlay({required Object time}) => 'Песни ещё будут играть примерно ${time}';
	@override String get onPause => 'На паузе';
	@override String get songsOnPause => 'Песни на паузе.';
	@override String get lastSong => 'Последняя песня:';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appBar.language': return 'Language';
			case 'appBar.logOut': return 'Log Out';
			case 'streamer.tabs.queue': return 'Queue';
			case 'streamer.tabs.history': return 'History';
			case 'streamer.tabs.topDJs': return 'Top DJs';
			case 'streamer.tabs.topSongs': return 'Top Songs';
			case 'streamer.tabs.month': return 'Month';
			case 'streamer.tabs.allTime': return 'All Time';
			case 'streamer.tabs.week': return 'Цeek';
			case 'streamer.queue.nowPlaying': return 'Now playing:';
			case 'streamer.queue.willStillPlay': return ({required Object time}) => 'Still going to play for about ${time}';
			case 'streamer.queue.onPause': return 'On pause';
			case 'streamer.queue.songsOnPause': return 'Songs on pause.';
			case 'streamer.queue.lastSong': return 'Last Song:';
			case 'form.search': return 'Search';
			case 'times.minutes': return 'm';
			case 'times.seconds': return 's';
			case 'times.hours': return 'h';
			case 'error': return 'Error';
			case 'notConnectedToBotoholt': return 'This streamer is not connected to Botoholt😪';
			case 'pageNotFound404': return 'Page not found\n404';
			case 'somethingWentWrong': return 'Что-то пошло не так(F5)🤔';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appBar.language': return 'Язык';
			case 'appBar.logOut': return 'Выйти';
			case 'streamer.tabs.queue': return 'Очередь';
			case 'streamer.tabs.history': return 'История';
			case 'streamer.tabs.topDJs': return 'Топ Диджеев';
			case 'streamer.tabs.topSongs': return 'Топ песен';
			case 'streamer.tabs.month': return 'Месяц';
			case 'streamer.tabs.allTime': return 'Всё время';
			case 'streamer.tabs.week': return 'Неделя';
			case 'streamer.queue.nowPlaying': return 'Сейчас играет:';
			case 'streamer.queue.willStillPlay': return ({required Object time}) => 'Песни ещё будут играть примерно ${time}';
			case 'streamer.queue.onPause': return 'На паузе';
			case 'streamer.queue.songsOnPause': return 'Песни на паузе.';
			case 'streamer.queue.lastSong': return 'Последняя песня:';
			case 'form.search': return 'Поиск';
			case 'times.minutes': return 'м';
			case 'times.seconds': return 'с';
			case 'times.hours': return 'ч';
			case 'error': return 'Error';
			case 'notConnectedToBotoholt': return 'Этот стрим не подключен к Botoholt😪';
			case 'pageNotFound404': return 'Страница не найдена\n404';
			case 'somethingWentWrong': return 'Something went wrong (F5)🤔';
			default: return null;
		}
	}
}
