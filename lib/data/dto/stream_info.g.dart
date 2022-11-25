// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamInfoDto _$$_StreamInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_StreamInfoDto(
      title: json['title'] as String,
      gameName: json['game_name'] as String,
      viewerCount: json['viewer_count'] as int,
      language: json['language'] as String,
    );

Map<String, dynamic> _$$_StreamInfoDtoToJson(_$_StreamInfoDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'game_name': instance.gameName,
      'viewer_count': instance.viewerCount,
      'language': instance.language,
    };
