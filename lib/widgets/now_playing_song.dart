import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/utils/randome_dance_emote.dart';
import 'package:botoholt_flutter/utils/song_duration.dart';
import 'package:botoholt_flutter/widgets/link.dart';
import 'package:botoholt_flutter/widgets/song_owner.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'now_playing_song.g.dart';

@swidget
Widget _nowPlayingSong(
  BuildContext context, {
  required StreamerQueueDto queue,
}) {
  final i18n = Translations.of(context);

  final duration =
      queue.queueList.map((e) => e.duration - e.startFrom).toList().sum;

  final hours = duration ~/ 3600;
  final minutes = (duration % 3600) ~/ 60;
  final seconds = ((duration % (3600 * 60))) % 60;

  final nowPlayingLink = queue.nowPlayingLink;
  final nowPlayingName = queue.nowPlayingName;
  final nowPlayingOwner = queue.nowPlayingOwner;
  final nowPlayingDuration = queue.nowPlayingDuration;
  final nowPlayingStartsFrom = queue.nowPlayingStartsFrom;
  final nowDurationIsNotEmpty =
      nowPlayingDuration != null && nowPlayingStartsFrom != null;

  final isNotEmtpy = nowPlayingOwner != null &&
      nowPlayingLink != null &&
      nowPlayingName != null;

  return Card(
    elevation: 0,
    color: Theme.of(context).colorScheme.onInverseSurface,
    child: Padding(
      padding: const EdgeInsets.all(Paddings.normal),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            queue.isPlaying ? randomDanceEmote() : 'assets/dance/PoroSad.png',
            width: 112,
            height: 112,
          ),
          Gaps.normal,
          if (!isNotEmtpy && !queue.isPlaying)
            Center(
              child: Text(
                'На паузе.',
                style: TextStyle(fontSize: FontSize.large),
              ),
            )
          else
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Paddings.small),
                    child: Text(
                      queue.isPlaying
                          ? i18n.streamer.queue.nowPlaying
                          : '${i18n.streamer.queue.songsOnPause}  ${i18n.streamer.queue.lastSong}',
                      style: const TextStyle(
                        fontSize: FontSize.big,
                      ),
                    ),
                  ),
                  if (isNotEmtpy)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Link(text: nowPlayingName, link: nowPlayingLink),
                        Gaps.normal,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SongOwner(nowPlayingOwner),
                                if (nowDurationIsNotEmpty)
                                  Text(
                                    songDuration(
                                      nowPlayingDuration - nowPlayingStartsFrom,
                                      i18n.times.minutes,
                                      i18n.times.seconds,
                                    ),
                                  ),
                              ],
                            ),
                            if (duration != 0)
                              Padding(
                                padding: EdgeInsets.only(top: Paddings.small),
                                child: Text(
                                  i18n.streamer.queue.willStillPlay(time: '${hours}${i18n.times.hours} ${minutes}${i18n.times.minutes} ${seconds}${i18n.times.seconds}'),
                                  style: TextStyle(
                                    fontSize: FontSize.normal,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            ),
        ],
      ),
    ),
  );
}
