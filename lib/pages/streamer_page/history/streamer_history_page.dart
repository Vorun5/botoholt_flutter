import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
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

  return StreamerScaffold(
    body: history.when(
      data: (data) => _Page(history: data),
      error: (error, _) => StreamerError(),
      loading: () => const LinearProgressIndicator(),
    ),
  );
}

@swidget
Widget __page(
  BuildContext context, {
  required List<HistorySongDto> history,
}) {
  final locale = LocaleSettings.currentLocale.languageCode;

  return Songs(
    songs: history.map((e) {
      final date = DateTime.parse(e.timeFrom);
      final time = '${DateFormat.Hm().format(date)} ${capitalize(DateFormat.EEEE(locale).format(date))}';
      
      return Song(
        mediaName: e.mediaName,
        time: time,
        requestedBy: e.requestedBy,
        mediaLink: e.mediaLink,
      );
    }).toList(),
  );
}
