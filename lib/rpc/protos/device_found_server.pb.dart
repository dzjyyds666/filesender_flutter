//
//  Generated code. Do not modify.
//  source: device_found_server.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class StartDeviceFoundRequest extends $pb.GeneratedMessage {
  factory StartDeviceFoundRequest({
    $fixnum.Int64? port,
    $fixnum.Int64? sendPort,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (sendPort != null) {
      $result.sendPort = sendPort;
    }
    return $result;
  }
  StartDeviceFoundRequest._() : super();
  factory StartDeviceFoundRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDeviceFoundRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartDeviceFoundRequest', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Port', protoName: 'Port')
    ..aInt64(2, _omitFieldNames ? '' : 'SendPort', protoName: 'SendPort')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDeviceFoundRequest clone() => StartDeviceFoundRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDeviceFoundRequest copyWith(void Function(StartDeviceFoundRequest) updates) => super.copyWith((message) => updates(message as StartDeviceFoundRequest)) as StartDeviceFoundRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartDeviceFoundRequest create() => StartDeviceFoundRequest._();
  StartDeviceFoundRequest createEmptyInstance() => create();
  static $pb.PbList<StartDeviceFoundRequest> createRepeated() => $pb.PbList<StartDeviceFoundRequest>();
  @$core.pragma('dart2js:noInline')
  static StartDeviceFoundRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDeviceFoundRequest>(create);
  static StartDeviceFoundRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get port => $_getI64(0);
  @$pb.TagNumber(1)
  set port($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sendPort => $_getI64(1);
  @$pb.TagNumber(2)
  set sendPort($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSendPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearSendPort() => clearField(2);
}

class StartDeviceFoundResponse extends $pb.GeneratedMessage {
  factory StartDeviceFoundResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  StartDeviceFoundResponse._() : super();
  factory StartDeviceFoundResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartDeviceFoundResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StartDeviceFoundResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'Success', protoName: 'Success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartDeviceFoundResponse clone() => StartDeviceFoundResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartDeviceFoundResponse copyWith(void Function(StartDeviceFoundResponse) updates) => super.copyWith((message) => updates(message as StartDeviceFoundResponse)) as StartDeviceFoundResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartDeviceFoundResponse create() => StartDeviceFoundResponse._();
  StartDeviceFoundResponse createEmptyInstance() => create();
  static $pb.PbList<StartDeviceFoundResponse> createRepeated() => $pb.PbList<StartDeviceFoundResponse>();
  @$core.pragma('dart2js:noInline')
  static StartDeviceFoundResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartDeviceFoundResponse>(create);
  static StartDeviceFoundResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class SearchDeviceRequest extends $pb.GeneratedMessage {
  factory SearchDeviceRequest({
    $fixnum.Int64? port,
    $fixnum.Int64? listenPort,
    $fixnum.Int64? expireTime,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (listenPort != null) {
      $result.listenPort = listenPort;
    }
    if (expireTime != null) {
      $result.expireTime = expireTime;
    }
    return $result;
  }
  SearchDeviceRequest._() : super();
  factory SearchDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchDeviceRequest', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Port', protoName: 'Port')
    ..aInt64(2, _omitFieldNames ? '' : 'ListenPort', protoName: 'ListenPort')
    ..aInt64(3, _omitFieldNames ? '' : 'ExpireTime', protoName: 'ExpireTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchDeviceRequest clone() => SearchDeviceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchDeviceRequest copyWith(void Function(SearchDeviceRequest) updates) => super.copyWith((message) => updates(message as SearchDeviceRequest)) as SearchDeviceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchDeviceRequest create() => SearchDeviceRequest._();
  SearchDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<SearchDeviceRequest> createRepeated() => $pb.PbList<SearchDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchDeviceRequest>(create);
  static SearchDeviceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get port => $_getI64(0);
  @$pb.TagNumber(1)
  set port($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get listenPort => $_getI64(1);
  @$pb.TagNumber(2)
  set listenPort($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasListenPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearListenPort() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expireTime => $_getI64(2);
  @$pb.TagNumber(3)
  set expireTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireTime() => clearField(3);
}

class SearchDeviceResponse extends $pb.GeneratedMessage {
  factory SearchDeviceResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  SearchDeviceResponse._() : super();
  factory SearchDeviceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchDeviceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchDeviceResponse', createEmptyInstance: create)
    ..aOB(2, _omitFieldNames ? '' : 'Success', protoName: 'Success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchDeviceResponse clone() => SearchDeviceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchDeviceResponse copyWith(void Function(SearchDeviceResponse) updates) => super.copyWith((message) => updates(message as SearchDeviceResponse)) as SearchDeviceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchDeviceResponse create() => SearchDeviceResponse._();
  SearchDeviceResponse createEmptyInstance() => create();
  static $pb.PbList<SearchDeviceResponse> createRepeated() => $pb.PbList<SearchDeviceResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchDeviceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchDeviceResponse>(create);
  static SearchDeviceResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);
}

class DeviceInfo extends $pb.GeneratedMessage {
  factory DeviceInfo({
    $core.String? deviceName,
    $core.String? deviceOSType,
    $core.String? deviceArchType,
    $fixnum.Int64? port,
    $core.String? iP,
    $fixnum.Int64? tIme,
    $core.String? msg,
  }) {
    final $result = create();
    if (deviceName != null) {
      $result.deviceName = deviceName;
    }
    if (deviceOSType != null) {
      $result.deviceOSType = deviceOSType;
    }
    if (deviceArchType != null) {
      $result.deviceArchType = deviceArchType;
    }
    if (port != null) {
      $result.port = port;
    }
    if (iP != null) {
      $result.iP = iP;
    }
    if (tIme != null) {
      $result.tIme = tIme;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  DeviceInfo._() : super();
  factory DeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceInfo', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'DeviceName', protoName: 'DeviceName')
    ..aOS(2, _omitFieldNames ? '' : 'DeviceOSType', protoName: 'DeviceOSType')
    ..aOS(3, _omitFieldNames ? '' : 'DeviceArchType', protoName: 'DeviceArchType')
    ..aInt64(4, _omitFieldNames ? '' : 'Port', protoName: 'Port')
    ..aOS(5, _omitFieldNames ? '' : 'IP', protoName: 'IP')
    ..aInt64(6, _omitFieldNames ? '' : 'TIme', protoName: 'TIme')
    ..aOS(7, _omitFieldNames ? '' : 'Msg', protoName: 'Msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfo clone() => DeviceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfo copyWith(void Function(DeviceInfo) updates) => super.copyWith((message) => updates(message as DeviceInfo)) as DeviceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfo create() => DeviceInfo._();
  DeviceInfo createEmptyInstance() => create();
  static $pb.PbList<DeviceInfo> createRepeated() => $pb.PbList<DeviceInfo>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfo>(create);
  static DeviceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceOSType => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceOSType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceOSType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceOSType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceArchType => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceArchType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceArchType() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceArchType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get port => $_getI64(3);
  @$pb.TagNumber(4)
  set port($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPort() => $_has(3);
  @$pb.TagNumber(4)
  void clearPort() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get iP => $_getSZ(4);
  @$pb.TagNumber(5)
  set iP($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIP() => $_has(4);
  @$pb.TagNumber(5)
  void clearIP() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get tIme => $_getI64(5);
  @$pb.TagNumber(6)
  set tIme($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTIme() => $_has(5);
  @$pb.TagNumber(6)
  void clearTIme() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get msg => $_getSZ(6);
  @$pb.TagNumber(7)
  set msg($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsg() => clearField(7);
}

class GetDeviceListRequest extends $pb.GeneratedMessage {
  factory GetDeviceListRequest() => create();
  GetDeviceListRequest._() : super();
  factory GetDeviceListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceListRequest clone() => GetDeviceListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceListRequest copyWith(void Function(GetDeviceListRequest) updates) => super.copyWith((message) => updates(message as GetDeviceListRequest)) as GetDeviceListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceListRequest create() => GetDeviceListRequest._();
  GetDeviceListRequest createEmptyInstance() => create();
  static $pb.PbList<GetDeviceListRequest> createRepeated() => $pb.PbList<GetDeviceListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceListRequest>(create);
  static GetDeviceListRequest? _defaultInstance;
}

class GetDeviceListResponse extends $pb.GeneratedMessage {
  factory GetDeviceListResponse({
    $core.Iterable<DeviceInfo>? deviceList,
  }) {
    final $result = create();
    if (deviceList != null) {
      $result.deviceList.addAll(deviceList);
    }
    return $result;
  }
  GetDeviceListResponse._() : super();
  factory GetDeviceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceListResponse', createEmptyInstance: create)
    ..pc<DeviceInfo>(1, _omitFieldNames ? '' : 'DeviceList', $pb.PbFieldType.PM, protoName: 'DeviceList', subBuilder: DeviceInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceListResponse clone() => GetDeviceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceListResponse copyWith(void Function(GetDeviceListResponse) updates) => super.copyWith((message) => updates(message as GetDeviceListResponse)) as GetDeviceListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceListResponse create() => GetDeviceListResponse._();
  GetDeviceListResponse createEmptyInstance() => create();
  static $pb.PbList<GetDeviceListResponse> createRepeated() => $pb.PbList<GetDeviceListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceListResponse>(create);
  static GetDeviceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DeviceInfo> get deviceList => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
