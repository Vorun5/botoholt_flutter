import 'dart:async';

import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/pages/streamer_page/queue/queue_is_empty.dart';
import 'package:botoholt_flutter/pages/streamer_page/queue/queue_is_null.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/view_streamer_queue_provider.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/song_duration.dart';
import 'package:botoholt_flutter/widgets/now_playing_song.dart';
import 'package:botoholt_flutter/widgets/songs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_queue_page.g.dart';

@hcwidget
Widget _streamerQueuePage(
  BuildContext context,
  WidgetRef ref,
  String? name,
) {
  final queue = ref.watch(viewStreameQueueProvider);
  final i18n = Translations.of(context);

  final numberUpdates = useState<int>(0);
  useEffect(
    () {
      final timer = Timer.periodic(Duration(seconds: 15), (timer) async {
        print(numberUpdates.value);
        if (numberUpdates.value == 720) {
          timer.cancel();
        }
        if (name != null) {
          try {
            numberUpdates.value++;
          } catch (e) {
            timer.cancel();
          }
          ref.read(viewStreameQueueProvider.notifier).state = ViewStremaerQueue(
            false,
            await ApiService.getStreamerQueue(name),
          );
        }
      });

      return () {
        timer.cancel();
      };
    },
    const [],
  );

  return StreamerScaffold(
    location: 'queue',
    body: queue.isLoading
        ? const [LinearProgressIndicator()]
        : queue.queue == null
            ? const [QueueIsNull()]
            : [
                NowPlayingSong(queue: queue.queue!),
                Gaps.tiny,
                if (queue.queue!.queueList.isEmpty)
                  const QueueIsEmpty()
                else
                  Songs(
                    songs: queue.queue!.queueList
                        .map(
                          (e) => Song(
                            mediaName: e.mediaName,
                            time: songDuration(e.duration, i18n.times.minutes,
                                i18n.times.seconds),
                            requestedBy: e.requestedBy,
                            mediaLink: e.mediaLink,
                            number: null,
                          ),
                        )
                        .toList(),
                  ),
              ],

    // queue.when(
    //   data: (data) => data == null
    //       ? const [QueueIsNull()]
    //       : [
    //           NowPlayingSong(queue: data),
    //           Gaps.tiny,
    //           if (data.queueList.isEmpty)
    //             const QueueIsEmpty()
    //           else
    //             Songs(
    //               songs: data.queueList
    //                   .map(
    //                     (e) => Song(
    //                       mediaName: e.mediaName,
    //                       time: songDuration(e.duration, i18n.times.minutes,
    //                           i18n.times.seconds),
    //                       requestedBy: e.requestedBy,
    //                       mediaLink: e.mediaLink,
    //                       number: null,
    //                     ),
    //                   )
    //                   .toList(),
    //             ),
    //         ],
    //   error: (error, _) => const [StreamerError()],
    //   loading: () => const [LinearProgressIndicator()],
    // ),
  );
}
