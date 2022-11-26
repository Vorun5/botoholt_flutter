import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streamerQueueProvider = FutureProvider<StreamerQueueDto?>((ref) async {
  final selectedStreamer = ref.watch(selectedSteamerProvider);
  if (selectedStreamer != null) {
    return ApiService.getStreamerQueue(selectedStreamer);
  }
  return null;
});
