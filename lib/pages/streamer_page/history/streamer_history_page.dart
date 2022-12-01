import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/pages/streamer_page/history/history_is_empty.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/providers/future/streamer_history_provider.dart';
import 'package:botoholt_flutter/utils/capitalize.dart';
import 'package:botoholt_flutter/widgets/songs.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

part 'streamer_history_page.g.dart';

@hcwidget
Widget _streamerHistoryPage(
  BuildContext context,
  WidgetRef ref,
) {
  final history = ref.watch(streamerHistoryProvider);
  final locale = LocaleSettings.currentLocale.languageCode;
  final mode = ref.watch(displayModeProvider);

  return StreamerScaffold(
    location: 'history',
    body: history.when(
      data: (data) => [
        if (data.isEmpty)
          const HistoryIsEmpty()
        else
          Songs(
            songs: data.map((e) {
              final date = DateTime.parse(e.timeFrom);
              late String time;
              if (mode == DisplayMode.mobile) {
                time =
                    '${DateFormat.Hm().format(date)} ${capitalize(DateFormat.E(locale).format(date))}';
              } else {
                time =
                    '${DateFormat.Hm().format(date)} ${capitalize(DateFormat.EEEE(locale).format(date))}';
              }

              return Song(
                mediaName: e.mediaName,
                time: time,
                requestedBy: e.requestedBy,
                mediaLink: e.mediaLink,
              );
            }).toList(),
          ),
      ],
      error: (error, _) => const [StreamerError()],
      loading: () => const [LinearProgressIndicator()],
    ),
  );
}
