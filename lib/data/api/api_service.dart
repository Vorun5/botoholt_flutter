import 'package:botoholt_flutter/data/api/api_constants.dart';
import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:dio/dio.dart';

class ApiService {
  static final _dio = Dio();

  static Future<List<StreamerDto>> getStreamers() async {
    // ignore: strict_raw_type
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
}
