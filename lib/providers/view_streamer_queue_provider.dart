import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/providers/future/streamer_queue_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewStremaerQueue {
  ViewStremaerQueue(this.isLoading, this.queue);
  final bool isLoading;
  final StreamerQueueDto? queue;
}

final viewStreameQueueProvider = StateProvider<ViewStremaerQueue>((ref) {
  final queue = ref.watch(streamerQueueProvider).value;
   if (queue != null) {
    return ViewStremaerQueue(false, queue);
   }

  return ViewStremaerQueue(true, null);
});