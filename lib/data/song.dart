import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  const factory Song({
    required String mediaName,
    required String time,
    required String requestedBy,
    required String mediaLink,
    required int? number,
  }) = _Song;

  factory Song.fromJson(Map<String, Object?> json) =>
      _$SongFromJson(json);
}
