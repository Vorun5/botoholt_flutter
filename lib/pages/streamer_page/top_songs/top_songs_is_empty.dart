import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:botoholt_flutter/widgets/message_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'top_songs_is_empty.g.dart';

@swidget
Widget _topSongsIsEmpty(BuildContext context, Period period) {
  final i18n = Translations.of(context);

  String getMessage(Period period) {
    switch (period) {
      case Period.week:
        return i18n.streamer.topSongs.weekIsEmpty;
      case Period.month:
        return i18n.streamer.topSongs.monthIsEmpty;
      case Period.alltime:
        return i18n.streamer.topSongs.allTimeIsEmpty;
    }
  }

  return MessageCard(
    imagePath: 'assets/dance/MmmHmm.gif',
    message: getMessage(period),
  );
}
