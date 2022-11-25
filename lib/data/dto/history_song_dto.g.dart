// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistorySongDto _$$_HistorySongDtoFromJson(Map<String, dynamic> json) =>
    _$_HistorySongDto(
      mediaName: json['mediaName'] as String,
      timeFrom: DateTime.parse(json['timeFrom'] as String),
      profileImageUrl: json['profileImageUrl'] as String,
      requestedBy: json['requestedBy'] as String,
      mediaLink: json['mediaLink'] as String,
    );

Map<String, dynamic> _$$_HistorySongDtoToJson(_$_HistorySongDto instance) =>
    <String, dynamic>{
      'mediaName': instance.mediaName,
      'timeFrom': instance.timeFrom.toIso8601String(),
      'profileImageUrl': instance.profileImageUrl,
      'requestedBy': instance.requestedBy,
      'mediaLink': instance.mediaLink,
    };
