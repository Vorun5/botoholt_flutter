import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/dto/top_dj_dto.dart';
import 'package:botoholt_flutter/providers/selected_period_top_djs_provider.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streamerTopDJsProvider = FutureProvider<List<TopDjDto>>((ref) async {
  final selectedStreamer = ref.watch(selectedSteamerProvider);
  final selectedPeriod = ref.watch(selectedPeriodTopDJsProvider);
  if (selectedStreamer != null) {
    return ApiService.getStreamerTopDJs(
      name: selectedStreamer,
      period: selectedPeriod,
    );
  }

  return [];
});
