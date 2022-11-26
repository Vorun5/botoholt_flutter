import 'package:botoholt_flutter/data/api/api_constants.dart';
import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:dio/dio.dart';

class ApiService {
  static final _dio = Dio();

  static Future<List<StreamerDto>> getStreamers() async {
    final response = await _dio.get<List>(
      ApiConstants.baseUrl + ApiConstants.streamersEndPoint,
    );
    final data = response.data;
    if (data == null) {
      return <StreamerDto>[];
    }

    return data
        .map((e) => StreamerDto.fromJson(e as Map<String, Object?>))
        .toList();
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
