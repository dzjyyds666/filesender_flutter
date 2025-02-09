// import 'package:file_sender/rpc/protos/file_sender.pbgrpc.dart';
// import 'package:grpc/grpc.dart';
//
// Future<void> main() async {
//   final channel = ClientChannel(
//     '127.0.0.1',
//     port: 10001,
//     options: ChannelOptions(
//       credentials: ChannelCredentials.insecure(),
//     ),
//   );
//
//   final stub = ServerClient(channel);
//
//   final name =  'duzhijun';
//
//   try {
//     final response = await stub.sayhello(
//       HelloRequest()..name = name,
//     );
//     print('Greeter client received: ${response.message}');
//   } catch (e) {
//     print('Caught error: $e');
//   }
//   await channel.shutdown();
// }

// import 'package:file_sender/rpc/protos/file_sender.pbgrpc.dart';
// import 'package:grpc/grpc.dart';
//
// class GrpcClient {
//   static ClientChannel? _channel;
//   static ServerClient? _client;
//
//   static Future<void> init() async {
//     if (_channel == null) {
//       _channel = ClientChannel(
//         '127.0.0.1',
//         port: 50005,
//         options: ChannelOptions(
//           credentials: ChannelCredentials.insecure(),
//         ),
//       );
//     }
//
//     if (_client == null) {
//       _client = ServerClient(_channel!);
//     }
//   }
//
//   static ServerClient get client => _client!;
// }


import 'package:grpc/grpc.dart';

import '../protos/device_found_server.pbgrpc.dart';

class GrpcClient {
  static ClientChannel? _channel;
  static DeviceFoundServerClient? _client;

  static Future<void> init() async {
    if (_channel == null) {
      _channel = ClientChannel(
        '127.0.0.1',
        port: 10001,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
    }

    if (_client == null) {
      _client = DeviceFoundServerClient(_channel!);
    }
  }

  static DeviceFoundServerClient get client => _client!;
}