import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/dto/streamer_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final streamersProvider =
    FutureProvider<List<StreamerDto>>((_) => ApiService.getStreamers());
