import 'package:botoholt_flutter/data/view_stremaer_queue.dart';
import 'package:botoholt_flutter/providers/future/streamer_queue_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final viewStreameQueueProvider = StateProvider<ViewStremaerQueue>((ref) {
  final queue = ref.watch(streamerQueueProvider).value;
  if (queue != null) {
    return ViewStremaerQueue(isLoading: false, queue: queue);
  }

  return ViewStremaerQueue(isLoading: true, queue: null);
});
