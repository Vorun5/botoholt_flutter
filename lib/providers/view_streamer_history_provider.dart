import 'package:botoholt_flutter/data/view_stremaer_history.dart';
import 'package:botoholt_flutter/providers/future/streamer_history_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final viewStreameHistoryProvider = StateProvider<ViewStremaerHistory>((ref) {
  final history = ref.watch(streamerHistoryProvider).value;
  if (history != null) {
    return ViewStremaerHistory(history: history, isLoading: false);
  }

  return ViewStremaerHistory(isLoading: true, history: []);
});
