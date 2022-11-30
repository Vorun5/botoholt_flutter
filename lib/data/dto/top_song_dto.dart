import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_song_dto.freezed.dart';
part 'top_song_dto.g.dart';

@freezed
class TopSongDto with _$TopSongDto {
  const factory TopSongDto({
    required int count,
    @JsonKey(name: 'mediaName') required String name,
  }) = _TopSongDto;

  factory TopSongDto.fromJson(Map<String, Object?> json) =>
      _$TopSongDtoFromJson(json);
}
