import 'package:botoholt_flutter/data/dto/streamer_dto.dart';

const _streamers = [
  StreamerDto(
    login: 'vorun5',
    displayName: 'Vorun5',
    profileImageUrl:
        'https://static-cdn.jtvnw.net/jtv_user_pictures/d868f530-9a79-4ef1-a2ac-010640c76f5e-profile_image-300x300.png',
    streamInfo: null,
    services: null,
  ),
  StreamerDto(
    login: 'vorun5',
    displayName: 'Vorun5',
    profileImageUrl:
        'https://static-cdn.jtvnw.net/jtv_user_pictures/d868f530-9a79-4ef1-a2ac-010640c76f5e-profile_image-300x300.png',
      streamInfo: null,
    services: null,
  ),
  StreamerDto(
    login: 'vorun5',
    displayName: 'Vorun5',
    profileImageUrl:
        'https://static-cdn.jtvnw.net/jtv_user_pictures/d868f530-9a79-4ef1-a2ac-010640c76f5e-profile_image-300x300.png',
      streamInfo: null,
    services: null,
  ),
];

Future<List<StreamerDto>> fakeStreamers() =>
    Future.delayed(const Duration(seconds: 2), _streamers.toList);
