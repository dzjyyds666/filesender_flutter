//
//  Generated code. Do not modify.
//  source: device_found_server.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'device_found_server.pb.dart' as $0;

export 'device_found_server.pb.dart';

@$pb.GrpcServiceName('DeviceFoundServer')
class DeviceFoundServerClient extends $grpc.Client {
  static final _$startDeviceFoundServer = $grpc.ClientMethod<$0.StartDeviceFoundRequest, $0.StartDeviceFoundResponse>(
      '/DeviceFoundServer/StartDeviceFoundServer',
      ($0.StartDeviceFoundRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StartDeviceFoundResponse.fromBuffer(value));
  static final _$startSearchDevice = $grpc.ClientMethod<$0.SearchDeviceRequest, $0.SearchDeviceResponse>(
      '/DeviceFoundServer/StartSearchDevice',
      ($0.SearchDeviceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchDeviceResponse.fromBuffer(value));
  static final _$getDeviceList = $grpc.ClientMethod<$0.GetDeviceListRequest, $0.GetDeviceListResponse>(
      '/DeviceFoundServer/GetDeviceList',
      ($0.GetDeviceListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDeviceListResponse.fromBuffer(value));

  DeviceFoundServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.StartDeviceFoundResponse> startDeviceFoundServer($0.StartDeviceFoundRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startDeviceFoundServer, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchDeviceResponse> startSearchDevice($0.SearchDeviceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startSearchDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDeviceListResponse> getDeviceList($0.GetDeviceListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDeviceList, request, options: options);
  }
}

@$pb.GrpcServiceName('DeviceFoundServer')
abstract class DeviceFoundServerServiceBase extends $grpc.Service {
  $core.String get $name => 'DeviceFoundServer';

  DeviceFoundServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StartDeviceFoundRequest, $0.StartDeviceFoundResponse>(
        'StartDeviceFoundServer',
        startDeviceFoundServer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StartDeviceFoundRequest.fromBuffer(value),
        ($0.StartDeviceFoundResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchDeviceRequest, $0.SearchDeviceResponse>(
        'StartSearchDevice',
        startSearchDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchDeviceRequest.fromBuffer(value),
        ($0.SearchDeviceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDeviceListRequest, $0.GetDeviceListResponse>(
        'GetDeviceList',
        getDeviceList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDeviceListRequest.fromBuffer(value),
        ($0.GetDeviceListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.StartDeviceFoundResponse> startDeviceFoundServer_Pre($grpc.ServiceCall call, $async.Future<$0.StartDeviceFoundRequest> request) async {
    return startDeviceFoundServer(call, await request);
  }

  $async.Future<$0.SearchDeviceResponse> startSearchDevice_Pre($grpc.ServiceCall call, $async.Future<$0.SearchDeviceRequest> request) async {
    return startSearchDevice(call, await request);
  }

  $async.Future<$0.GetDeviceListResponse> getDeviceList_Pre($grpc.ServiceCall call, $async.Future<$0.GetDeviceListRequest> request) async {
    return getDeviceList(call, await request);
  }

  $async.Future<$0.StartDeviceFoundResponse> startDeviceFoundServer($grpc.ServiceCall call, $0.StartDeviceFoundRequest request);
  $async.Future<$0.SearchDeviceResponse> startSearchDevice($grpc.ServiceCall call, $0.SearchDeviceRequest request);
  $async.Future<$0.GetDeviceListResponse> getDeviceList($grpc.ServiceCall call, $0.GetDeviceListRequest request);
}
