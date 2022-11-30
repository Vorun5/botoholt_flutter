import 'package:botoholt_flutter/data/top_item.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/future/streamer_top_songs_provider.dart';
import 'package:botoholt_flutter/providers/selected_period_top_songs_provider.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:botoholt_flutter/widgets/periods.dart';
import 'package:botoholt_flutter/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_top_songs_page.g.dart';

@hcwidget
Widget _streamerSongsPage(
  BuildContext context,
  WidgetRef ref,
  String? name,
) {
  final topSongs = ref.watch(streamerTopSongsProvider);
  final selectedPeriod = ref.watch(selectedPeriodTopSongsProvider);

  return StreamerScaffold(
    location: 'top-songs',
    body: [
      Periods(
        selectedPeriod: selectedPeriod,
        periods: const [Period.month, Period.alltime],
        onPressed: (Period period) {
          switch (period) {
            case Period.alltime:
              {
                if (name != null) {
                  context.goNamed(
                    'top-songs-alltime',
                    params: {'name': name},
                  );
                }
                return;
              }
            case Period.week:
              {
                if (name != null) {
                  context.goNamed(
                    'top-songs-week',
                    params: {'name': name},
                  );
                }
                return;
              }
            case Period.month:
              {
                if (name != null) {
                  context.goNamed(
                    'top-songs-month',
                    params: {'name': name},
                  );
                }
                return;
              }
          }
        },
      ),
      Gaps.small,
      topSongs.when(
        data: (data) => Top(
          top: data.map((e) => TopItem(name: e.name, count: e.count)).toList(),
        ),
        error: (error, _) => const StreamerError(),
        loading: () => const LinearProgressIndicator(),
      ),
    ],
  );
}
