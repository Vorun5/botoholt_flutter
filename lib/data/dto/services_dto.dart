import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_dto.freezed.dart';
part 'services_dto.g.dart';

@freezed
class ServicesDto with _$ServicesDto {
  const factory ServicesDto({
    required bool botoholt,
    required bool pubsub,
  }) = _ServicesDto;

  factory ServicesDto.fromJson(Map<String, Object?> json) =>
      _$ServicesDtoFromJson(json);
}
