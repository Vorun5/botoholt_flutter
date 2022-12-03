import 'dart:async';

import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/song.dart';
import 'package:botoholt_flutter/data/view_stremaer_history.dart';
import 'package:botoholt_flutter/i18n/strings.g.dart';
import 'package:botoholt_flutter/pages/streamer_page/history/history_is_empty.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/data_is_loading_provider.dart';
import 'package:botoholt_flutter/providers/display_mode_provider.dart';
import 'package:botoholt_flutter/providers/view_streamer_history_provider.dart';
import 'package:botoholt_flutter/utils/capitalize.dart';
import 'package:botoholt_flutter/widgets/songs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

part 'streamer_history_page.g.dart';

@hcwidget
Widget _streamerHistoryPage(
  BuildContext context,
  WidgetRef ref,
  String? name,
) {
  final history = ref.watch(viewStreameHistoryProvider);
  final locale = LocaleSettings.currentLocale.languageCode;
  final mode = ref.watch(displayModeProvider);

  final numberUpdates = useState<int>(0);
  useEffect(
    () {
      final timer = Timer.periodic(Duration(seconds: 60), (timer) async {
        if (numberUpdates.value == 720) {
          timer.cancel();
        }
        if (name != null) {
          try {
            numberUpdates.value++;
          } catch (e) {
            timer.cancel();
          }
          final dataIsLoading = ref.read(dataIsLoadingProvider);
          if (dataIsLoading) {
            print('данные уже обновляются');
            return;
          }
          final oldHistory = ref.read(viewStreameHistoryProvider);
          final newHistory = oldHistory.copyWith(
            history: await ApiService.getStreamerHistory(name),
          );

          if (newHistory == oldHistory) {
            print('ничего не изменилось');
            return;
          }
          print('обновляем');
          ref.read(viewStreameHistoryProvider.notifier).state = newHistory;
        }
      });

      return () {
        timer.cancel();
      };
    },
    const [],
  );

  return StreamerScaffold(
    location: 'history',
    body: history.isLoading
        ? const [LinearProgressIndicator()]
        : [
            if (history.history.isEmpty)
              const HistoryIsEmpty()
            else
              Songs(
                songs: history.history.map((e) {
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
                    number: null,
                  );
                }).toList(),
              ),
          ],
  );
}
