import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_stremaer_queue.freezed.dart';

@freezed
class ViewStremaerQueue with _$ViewStremaerQueue {
  const factory ViewStremaerQueue({
    required bool isLoading,
    required StreamerQueueDto? queue,
  }) = _ViewStremaerQueue;
}


extension EqulViewStremaerQueue on ViewStremaerQueue {
  bool equal(ViewStremaerQueue vq2) {
      final q = this.queue;
      final q2 = vq2.queue;


      print(q.toString());
      print(q2.toString());
      

      if ((q == null && q2 == null) || (q != null && q2 != null)) return true;
      if ((q != null && q2 == null) || q == null && q2 != null) return false;

      return q == q2;
  }
}