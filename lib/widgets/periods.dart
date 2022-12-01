import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/utils/paddings.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:botoholt_flutter/widgets/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'periods.g.dart';

@swidget
Widget _periods(
  BuildContext context, {
  required Period selectedPeriod,
  required List<Period> periods,
  required void Function(Period period) onPressed,
}) {
  final i18n = Translations.of(context);

  String getPeriodName(Period period) {
    switch (period) {
      case Period.alltime:
        return i18n.streamer.tabs.allTime;

      case Period.week:
        return i18n.streamer.tabs.week;

      case Period.month:
        return i18n.streamer.tabs.month;
    }
  }

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: periods
          .map(
            (period) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: Paddings.tiny),
              child: TabButton(
                isFocus: selectedPeriod == period,
                text: getPeriodName(period),
                color: period.color(),
                onPressed: () => onPressed(period),
              ),
            ),
          )
          .toList(),
    ),
  );
}
