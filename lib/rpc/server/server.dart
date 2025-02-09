// import 'package:grpc/service_api.dart';
//
// import '../protos/file_sender.pbgrpc.dart';
// import 'package:grpc/grpc.dart';
//
// class ServerClient extends ServerServiceBase {
//   @override
//   Future<HelloReply> sayhello(ServiceCall ctx, HelloRequest request) async {
//     print("grpc调用");
//     return HelloReply()..message = 'Hello ${request.name}';
//   }
// }
//
// Future<void> main() async {
//   final server = Server.create(
//       services: [ServerClient()],
//       codecRegistry:
//           CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]));
//
//   await server.serve(port: 10001);
// }
