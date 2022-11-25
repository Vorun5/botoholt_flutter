import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_song_dto.freezed.dart';
part 'history_song_dto.g.dart';

@freezed
class HistorySongDto with _$HistorySongDto {
  const factory HistorySongDto({
required String mediaName,
     required DateTime timeFrom,
    required String profileImageUrl,
    required String requestedBy,
    required String mediaLink,
  }) = _HistorySongDto;

  factory HistorySongDto.fromJson(Map<String, Object?> json) =>
      _$HistorySongDtoFromJson(json);
}
