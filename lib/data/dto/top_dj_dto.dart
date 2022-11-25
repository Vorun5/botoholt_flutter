import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_dj_dto.freezed.dart';
part 'top_dj_dto.g.dart';

@freezed
class TopDjDto with _$TopDjDto {
  const factory TopDjDto({
    required int count,
    @JsonKey(name: 'requestedBy') required String name,
  }) = _TopDjDto;

  factory TopDjDto.fromJson(Map<String, Object?> json) =>
      _$TopDjDtoFromJson(json);
}
