import 'package:botoholt_flutter/data/api/api_constants.dart';
import 'package:botoholt_flutter/data/dto/history_song_dto.dart';
import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:botoholt_flutter/data/dto/streamer_queue_dto.dart';
import 'package:botoholt_flutter/data/dto/top_dj_dto.dart';
import 'package:botoholt_flutter/data/dto/top_song_dto.dart';
import 'package:botoholt_flutter/utils/periods.dart';
import 'package:dio/dio.dart';

class ApiService {
  static final _dio = Dio();

  static Future<List<StreamerDto>> getStreamers() async {
    try {
      final response = await _dio.get<List>(
        ApiConstants.baseUrl + ApiConstants.streamersEndPoint,
      );
      final data = response.data;
      if (data == null) {
        return [];
      }

      return data
          .map((e) => StreamerDto.fromJson(e as Map<String, Object?>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  static Future<List<HistorySongDto>> getStreamerHistory(String name) async {
    final response = await _dio.get<List>(
      ApiConstants.baseUrl2 + ApiConstants.streamerHitsotyEndPoint(name),
    );
    final data = response.data;
    if (data == null) {
      return <HistorySongDto>[];
    }

    return data
        .map((e) => HistorySongDto.fromJson(e as Map<String, Object?>))
        .toList();
  }

  static Future<List<TopDjDto>> getStreamerTopDJs({
    required String name,
    required Period period,
  }) async {
    try {
      final response = await _dio.get<List>(
        ApiConstants.baseUrl2 +
            ApiConstants.streamerTopDJsEndpoint(name, period),
      );
      final data = response.data;
      if (data == null) {
        return [];
      }

      return data
          .map((e) => TopDjDto.fromJson(e as Map<String, Object?>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  static Future<List<TopSongDto>> getStreamerTopSongs({
    required String name,
    required Period period,
  }) async {
    try {
      final response = await _dio.get<List>(
        ApiConstants.baseUrl2 +
            ApiConstants.streamerSongsEndpoint(name, period),
      );
      final data = response.data;
      if (data == null) {
        return [];
      }

      return data
          .map((e) => TopSongDto.fromJson(e as Map<String, Object?>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  static Future<StreamerQueueDto?> getStreamerQueue(String name) async {
    try {
      final response = await _dio.get(
        ApiConstants.baseUrl3 + ApiConstants.streamerQueueEndPoint(name),
      );
      final data = response.data;
      if (data == null) {
        return null;
      }

      return StreamerQueueDto.fromJson(data);
    } catch (e) {
      return null;
    }
  }

  static Future<StreamerDto?> getStreamer(String name) async {
    try {
      final response = await _dio.get<List>(
        ApiConstants.baseUrl + ApiConstants.streamerEndPoint(name),
      );

      final data = response.data;
      if (data == null) {
        return null;
      }

      final s = data
          .map((e) => StreamerDto.fromJson(e as Map<String, Object?>))
          .toList();

      return s.first;
    } on DioError catch (e) {
      final res = e.response;
      if (res != null) {
        if (res.statusCode == 404) {
          return null;
        }
      }
      throw Exception('Dude this shit');
    }
  }
}
