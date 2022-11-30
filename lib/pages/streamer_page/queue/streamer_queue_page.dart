import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/future/streamer_queue_provider.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/song_duration.dart';
import 'package:botoholt_flutter/widgets/now_playing_song.dart';
import 'package:botoholt_flutter/widgets/songs.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_queue_page.g.dart';

@hcwidget
Widget _streamerQueuePage(
  BuildContext context,
  WidgetRef ref,
) {
  final queue = ref.watch(streamerQueueProvider);
  final i18n = Translations.of(context);

  return StreamerScaffold(
    location: 'queue',
    body: queue.when(
      data: (data) => data == null
          ? null
          : [
              NowPlayingSong(queue: data),
              Gaps.tiny,
              Songs(
                songs: data.queueList
                    .map(
                      (e) => Song(
                          mediaName: e.mediaName,
                          time: songDuration(e.duration, i18n.times.minutes,
                              i18n.times.seconds),
                          requestedBy: e.requestedBy,
                          mediaLink: e.mediaLink),
                    )
                    .toList(),
              ),
            ],
      error: (error, _) => const [ StreamerError()],
      loading: () => const [LinearProgressIndicator()],
    ),
  );
}
