import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:botoholt_flutter/providers/future/streamer_history_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewStremaerHistory {
  ViewStremaerHistory(this.isLoading, this.history);
  final bool isLoading;
  final List<HistorySongDto> history;
}

final viewStreameHistoryProvider = StateProvider<ViewStremaerHistory>((ref) {
  final history = ref.watch(streamerHistoryProvider).value;
   if (history != null) {
    return ViewStremaerHistory(false, history);
   }

  return ViewStremaerHistory(true, []);
});
