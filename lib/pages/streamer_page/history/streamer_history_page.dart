import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/future/streamer_history_provider.dart';
import 'package:botoholt_flutter/widgets/history_song_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      error: (error, state) => const Text('Error'),
      loading: () => const LinearProgressIndicator(),
    ),
  );
}

@swidget
Widget __page(BuildContext context, {
  required List<HistorySongDto> history,
}) {
  return Column(
    children: history.map((e) => HistorySongCard(song: e,)).toList(),
  );
}