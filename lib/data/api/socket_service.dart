import 'package:botoholt_flutter/data/api/api_constants.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketService {
  SocketService(String name) {
    
   socket = io(
      // im using adb so i need to use my wifi ip
      'https://bho.lt/',
      OptionBuilder()
          .setPath(ApiConstants.streamerSocketEndpoint(name))
          .setTransports(['websocket']) // for Flutter or Dart VM
          .disableAutoConnect() // disable auto-connection
          // .setExtraHeaders({'foo': 'bar'}) // optional
          .build());
  }

  late Socket socket; 

  initConnection() {
    socket.connect();
    socket.on('connection', (_) {
      debugPrint('connect ${_.toString()}');
    });
    debugPrint('Trying Connection');
    socket.onConnect((_) {
      debugPrint('connect');
    });

    socket.onerror((_) {
      debugPrint('Error Is ${_.toString()}');
    });
  }

}