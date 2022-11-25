import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_info.freezed.dart';
part 'stream_info.g.dart';

@freezed
class StreamInfoDto with _$StreamInfoDto {
  const factory StreamInfoDto({
    required String title,
    @JsonKey(name: 'game_name') required String gameName,
    @JsonKey(name: 'viewer_count') required int viewerCount,
    @JsonKey(name: 'language') required String language,
  }) = _StreamInfoDto;

  factory StreamInfoDto.fromJson(Map<String, Object?> json) =>
      _$StreamInfoDtoFromJson(json);
}
