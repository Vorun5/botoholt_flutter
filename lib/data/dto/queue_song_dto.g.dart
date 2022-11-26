// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueueSongDto _$$_QueueSongDtoFromJson(Map<String, dynamic> json) =>
    _$_QueueSongDto(
      mediaId: json['mediaId'] as int,
      mediaName: json['mediaName'] as String,
      mediaLink: json['mediaLink'] as String,
      requestedBy: json['requestedBy'] as String,
      startFrom: json['startFrom'] as int,
      duration: json['duration'] as int,
    );

Map<String, dynamic> _$$_QueueSongDtoToJson(_$_QueueSongDto instance) =>
    <String, dynamic>{
      'mediaId': instance.mediaId,
      'mediaName': instance.mediaName,
      'mediaLink': instance.mediaLink,
      'requestedBy': instance.requestedBy,
      'startFrom': instance.startFrom,
      'duration': instance.duration,
    };
