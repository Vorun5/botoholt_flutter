// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streamer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamerDto _$$_StreamerDtoFromJson(Map<String, dynamic> json) =>
    _$_StreamerDto(
      login: json['login'] as String,
      displayName: json['display_name'] as String,
      profileImageUrl: json['profile_image_url'] as String,
      services: json['settings'] == null
          ? null
          : ServicesDto.fromJson(json['settings'] as Map<String, dynamic>),
      streamInfo: json['streamInfo'] == null
          ? null
          : StreamInfoDto.fromJson(json['streamInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StreamerDtoToJson(_$_StreamerDto instance) =>
    <String, dynamic>{
      'login': instance.login,
      'display_name': instance.displayName,
      'profile_image_url': instance.profileImageUrl,
      'settings': instance.services,
      'streamInfo': instance.streamInfo,
    };
