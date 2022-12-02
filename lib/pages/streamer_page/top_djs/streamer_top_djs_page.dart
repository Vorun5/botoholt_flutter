import 'package:botoholt_flutter/data/top_item.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_error.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/pages/streamer_page/top_djs/top_djs_is_empty.dart';
import 'package:botoholt_flutter/providers/future/streamer_top_djs_provider.dart';
import 'package:botoholt_flutter/providers/selected_period_top_djs_provider.dart';
import 'package:botoholt_flutter/utils/gaps.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:botoholt_flutter/widgets/periods.dart';
import 'package:botoholt_flutter/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_top_djs_page.g.dart';

@hcwidget
Widget _streamerTopDJsPage(
  BuildContext context,
  WidgetRef ref,
  String? name,
) {
  final topDJs = ref.watch(streamerTopDJsProvider);
  final selectedPeriod = ref.watch(selectedPeriodTopDJsProvider);

  return StreamerScaffold(
    location: 'top-djs',
    body: [
      Periods(
        selectedPeriod: selectedPeriod,
        periods: const [Period.week, Period.month, Period.alltime],
        onPressed: (Period period) {
          switch (period) {
            case Period.alltime:
              {
                if (name != null) {
                  context.goNamed(
                    'top-djs-alltime',
                    params: {'name': name},
                  );
                }
                return;
              }
            case Period.week:
              {
                if (name != null) {
                  context.goNamed(
                    'top-djs-week',
                    params: {'name': name},
                  );
                }
                return;
              }
            case Period.month:
              {
                if (name != null) {
                  context.goNamed(
                    'top-djs-month',
                    params: {'name': name},
                  );
                }
                return;
              }
          }
        },
      ),
      Gaps.small,
      topDJs.when(
        data: (data) {
          if (data.isEmpty)
            return TopDJsIsEmpty(selectedPeriod);
          else
            return Top(
                top: data
                    .map(
                      (e) => TopItem(
                        name: e.name,
                        count: e.count,
                        link: null,
                        number: null,
                      ),
                    )
                    .toList());
        },
        error: (error, _) => const StreamerError(),
        loading: () => const LinearProgressIndicator(),
      ),
    ],
  );
}
