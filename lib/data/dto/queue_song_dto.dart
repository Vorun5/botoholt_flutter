import 'package:freezed_annotation/freezed_annotation.dart';

part 'queue_song_dto.freezed.dart';
part 'queue_song_dto.g.dart';

@freezed
class QueueSongDto with _$QueueSongDto {
  const factory QueueSongDto({
    required int mediaId,
    required String mediaName,
    required String mediaLink,
    required String requestedBy,
    required int startFrom,
    required int duration,
  }) = _QueueSongDto;

  factory QueueSongDto.fromJson(Map<String, Object?> json) =>
      _$QueueSongDtoFromJson(json);
}
