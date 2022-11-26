import 'package:botoholt_flutter/pages/streamer_page/streamer_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'streamer_queue_page.g.dart';

@hcwidget
Widget _streamerQueuePage(
  BuildContext context,
  WidgetRef ref,
) =>
    StreamerScaffold(
      body: const Text('Queue page'),
    );
