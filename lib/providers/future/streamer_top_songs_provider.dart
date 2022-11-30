import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/dto/top_song_dto.dart';
import 'package:botoholt_flutter/providers/selected_period_top_songs_provider.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streamerTopSongsProvider = FutureProvider<List<TopSongDto>>((ref) async {
  final selectedStreamer = ref.watch(selectedSteamerProvider);
  final selectedPeriod = ref.watch(selectedPeriodTopSongsProvider);
  if (selectedStreamer != null) {
    return ApiService.getStreamerTopSongs(
      name: selectedStreamer,
      period: selectedPeriod,
    );
  }

  return [];
});
