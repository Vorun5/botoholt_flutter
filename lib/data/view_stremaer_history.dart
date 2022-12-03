import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_stremaer_history.freezed.dart';

@freezed
class ViewStremaerHistory with _$ViewStremaerHistory {
  const factory ViewStremaerHistory({
    required bool isLoading,
    required List<HistorySongDto> history,
  }) = _ViewStremaerHistory;
}

extension EqualViewStremaerHistory on ViewStremaerHistory {
  bool equal(ViewStremaerHistory h2) {
    if (h2.history.length != this.history.length) return false;
    for (int i = 0; i < this.history.length; i++){
        if (this.history[i] != h2.history[i]) return false;
    }
    
    return true;
  }
} 