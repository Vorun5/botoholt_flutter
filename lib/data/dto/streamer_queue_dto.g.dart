// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_queue_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamerQueueDto _$$_StreamerQueueDtoFromJson(Map<String, dynamic> json) =>
    _$_StreamerQueueDto(
      isPlaying: json['isPlaying'] as bool,
      nowPlayingName: json['nowPlayingName'] as String?,
      nowPlayingLink: json['nowPlayingLink'] as String?,
      nowPlayingOwner: json['nowPlayingOwner'] as String?,
      nowPlayingStartsFrom: json['nowPlayingStartsFrom'] as int?,
      nowPlayingDuration: json['nowPlayingDuration'] as int?,
      queueList: (json['queueList'] as List<dynamic>)
          .map((e) => QueueSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StreamerQueueDtoToJson(_$_StreamerQueueDto instance) =>
    <String, dynamic>{
      'isPlaying': instance.isPlaying,
      'nowPlayingName': instance.nowPlayingName,
      'nowPlayingLink': instance.nowPlayingLink,
      'nowPlayingOwner': instance.nowPlayingOwner,
      'nowPlayingStartsFrom': instance.nowPlayingStartsFrom,
      'nowPlayingDuration': instance.nowPlayingDuration,
      'queueList': instance.queueList,
    };
