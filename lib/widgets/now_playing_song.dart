import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/utils/font_size.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/utils/randome_dance_emote.dart';
import 'package:botoholt_flutter/utils/song_duration.dart';
import 'package:botoholt_flutter/widgets/card_container.dart';
import 'package:botoholt_flutter/widgets/link.dart';
import 'package:botoholt_flutter/widgets/song_owner.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'now_playing_song.g.dart';

@hcwidget
Widget _nowPlayingSong(
  BuildContext context,
  WidgetRef ref, {
  required StreamerQueueDto queue,
}) {
  final i18n = Translations.of(context);

  final duration =
      queue.queueList.map((e) => e.duration - e.startFrom).toList().sum;

  final nowPlayingLink = queue.nowPlayingLink;
  final nowPlayingName = queue.nowPlayingName;
  final nowPlayingOwner = queue.nowPlayingOwner;
  final nowPlayingDuration = queue.nowPlayingDuration;
  final nowPlayingStartsFrom = queue.nowPlayingStartsFrom;

  final isNotEmtpy = nowPlayingOwner != null &&
      nowPlayingLink != null &&
      nowPlayingName != null;

  final mode = ref.watch(displayModeProvider);

  return CardContainer(
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              queue.isPlaying ? randomDanceEmote() : 'assets/dance/PoroSad.png',
              width: mode == DisplayMode.mobile ? 90 : 112,
              height: mode == DisplayMode.mobile ? 90 : 112,
            ),
            Gaps.normal,
            if (!isNotEmtpy && !queue.isPlaying)
              Center(
                child: Text(
                  i18n.streamer.queue.onPause,
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
                        style: TextStyle(
                          fontSize: mode == DisplayMode.mobile
                              ? FontSize.normal
                              : FontSize.big,
                        ),
                      ),
                    ),
                    if (isNotEmtpy)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Link(text: nowPlayingName, link: nowPlayingLink),
                          Gaps.normal,
                          if (mode != DisplayMode.mobile)
                            _OwnerAndDuration(
                              duration: duration,
                              nowPlayingDuration: nowPlayingDuration,
                              nowPlayingStartsFrom: nowPlayingStartsFrom,
                              owner: nowPlayingOwner,
                            ),
                        ],
                      ),
                  ],
                ),
              ),
          ],
        ),
        if (isNotEmtpy && mode == DisplayMode.mobile)
          _OwnerAndDuration(
            duration: duration,
            nowPlayingDuration: nowPlayingDuration,
            nowPlayingStartsFrom: nowPlayingStartsFrom,
            owner: nowPlayingOwner,
          ),
      ],
    ),
  );
}

@swidget
Widget __ownerAndDuration(
  BuildContext context, {
  required String owner,
  required int duration,
  required int? nowPlayingDuration,
  required int? nowPlayingStartsFrom,
}) {
  final i18n = Translations.of(context);

  final hours = duration ~/ 3600;
  final minutes = (duration % 3600) ~/ 60;
  final seconds = ((duration % (3600 * 60))) % 60;

  final nowDurationIsNotEmpty =
      nowPlayingDuration != null && nowPlayingStartsFrom != null;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SongOwner(owner),
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
            i18n.streamer.queue.willStillPlay(
                time:
                    '${hours}${i18n.times.hours} ${minutes}${i18n.times.minutes} ${seconds}${i18n.times.seconds}'),
            style: TextStyle(
              fontSize: FontSize.normal,
            ),
          ),
        ),
    ],
  );
}
