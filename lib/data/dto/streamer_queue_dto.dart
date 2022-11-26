import 'package:botoholt_flutter/data/dto/queue_song_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'streamer_queue_dto.freezed.dart';
part 'streamer_queue_dto.g.dart';

@freezed
class StreamerQueueDto with _$StreamerQueueDto {
  const factory StreamerQueueDto({
    required bool isPlaying,
    required String? nowPlayingName,
    required String? nowPlayingLink,
    required String? nowPlayingOwner,
    required int? nowPlayingStartsFrom,
    required int? nowPlayingDuration,
    required List<QueueSongDto> queueList,
  }) = _StreamerQueueDto;

  factory StreamerQueueDto.fromJson(Map<String, Object?> json) =>
      _$StreamerQueueDtoFromJson(json);
}
