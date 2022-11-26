import 'package:botoholt_flutter/data/dto/services_dto.dart';
import 'package:botoholt_flutter/data/dto/stream_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'streamer_dto.freezed.dart';
part 'streamer_dto.g.dart';

@freezed
class StreamerDto with _$StreamerDto {
  const factory StreamerDto({
    @JsonKey(name: 'login') required String login,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'daLink') required String? daUrl,
    @JsonKey(name: 'broadcaster_type') required String broadcasterType,
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
    @JsonKey(name: 'settings') required ServicesDto? services,
    required StreamInfoDto? streamInfo,
  }) = _StreamerDto;

  factory StreamerDto.fromJson(Map<String, Object?> json) =>
      _$StreamerDtoFromJson(json);
}