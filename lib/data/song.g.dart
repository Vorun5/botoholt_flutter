// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      mediaName: json['mediaName'] as String,
      time: json['time'] as String,
      requestedBy: json['requestedBy'] as String,
      mediaLink: json['mediaLink'] as String,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'mediaName': instance.mediaName,
      'time': instance.time,
      'requestedBy': instance.requestedBy,
      'mediaLink': instance.mediaLink,
      'number': instance.number,
    };
