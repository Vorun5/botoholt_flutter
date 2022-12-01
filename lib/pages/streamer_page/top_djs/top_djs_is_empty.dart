import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:botoholt_flutter/widgets/message_card.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'top_djs_is_empty.g.dart';

@swidget
Widget _topDJsIsEmpty(BuildContext context, Period period) {
  final i18n = Translations.of(context);

  String getMessage(Period period) {
    switch (period) {
      case Period.week:
        return i18n.streamer.topDJs.weekIsEmpty;
      case Period.month:
        return i18n.streamer.topDJs.monthIsEmpty;
      case Period.alltime:
        return i18n.streamer.topDJs.allTimeIsEmpty;
    }
  }

  return MessageCard(
    imagePath: 'assets/dance/peepoDJ.gif',
    message: getMessage(period),
  );
}
