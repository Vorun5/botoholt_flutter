import 'dart:async';

import 'package:botoholt_flutter/data/api/api_service.dart';
import 'package:botoholt_flutter/data/api/socket_service.dart';
import 'package:botoholt_flutter/providers/selected_streamer_provider.dart';
import 'package:botoholt_flutter/providers/view_streamer_history_provider.dart';
import 'package:botoholt_flutter/providers/view_streamer_queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart';

final socketProvider = StreamProvider.autoDispose((ref) async* {
  StreamController stream = StreamController();
  final streamer = ref.watch(selectedSteamerProvider);
  debugPrint(streamer);
  final SocketService? socket = null;
  if (streamer != null) {
    final socket = SocketService(streamer);
    socket.initConnection();
    socket.socket.onerror((err) {
      debugPrint('error');
    });
    socket.socket
        .onDisconnect((_) => debugPrint('disconnect'));

    socket.socket.on('notification', (data) async {
      ref.read(viewStreameHistoryProvider.notifier).state = ViewStremaerHistory(
        false,
        await ApiService.getStreamerHistory(streamer),
      );
      ref.read(viewStreameQueueProvider.notifier).state = ViewStremaerQueue(
        false,
        await ApiService.getStreamerQueue(streamer),
      );
      debugPrint('${streamer} update queue and history');
    });

    socket.socket.onerror((_) {
      debugPrint("Error IS ${_.toString()}");
    });
  }

  /** if you using .autDisopose */
  ref.onDispose(() {
    // close socketio
    stream.close();
    if (streamer != null && socket != null) {
      socket.socket.dispose();
    }
  });

  await for (final value in stream.stream) {
    debugPrint('stream value => ${value.toString()}');
    yield value;
  }
});
