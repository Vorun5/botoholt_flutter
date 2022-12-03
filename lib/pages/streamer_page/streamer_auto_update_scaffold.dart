import 'dart:async';

import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/view_stremaer_queue.dart';
import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:botoholt_flutter/providers/view_streamer_history_provider.dart';
import 'package:botoholt_flutter/providers/view_streamer_queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_auto_update_scaffold.g.dart';

@hcwidget
Widget _streamerAutoUpdateScaffold(
  BuildContext context,
  WidgetRef ref, {
  String location = '',
  List<Widget>? body,
  String? name,
}) {
  // final numberUpdates = useState<int>(0);

  useEffect(
    () {
      Timer.periodic(Duration(seconds: 10), (timer) async {
        if (name != null) {
          timer.cancel();
          print('начало обновления');
          // ref.read(viewStreameHistoryProvider.notifier).state =
          //     ViewStremaerHistory(
          //   false,
          //   await ApiService.getStreamerHistory(name),
          // );
          ref.read(viewStreameQueueProvider.notifier).state = ViewStremaerQueue(
            isLoading: false,
            queue: await ApiService.getStreamerQueue(name),
          );

          print('обновлено');
        }
      });

      return null;
    },
    const [],
  );

  return StreamerScaffold(
    location: location,
    body: body,
  );
}
