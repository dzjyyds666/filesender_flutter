//
//  Generated code. Do not modify.
//  source: device_found_server.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use startDeviceFoundRequestDescriptor instead')
const StartDeviceFoundRequest$json = {
  '1': 'StartDeviceFoundRequest',
  '2': [
    {'1': 'Port', '3': 1, '4': 1, '5': 3, '10': 'Port'},
    {'1': 'SendPort', '3': 2, '4': 1, '5': 3, '10': 'SendPort'},
  ],
};

/// Descriptor for `StartDeviceFoundRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDeviceFoundRequestDescriptor = $convert.base64Decode(
    'ChdTdGFydERldmljZUZvdW5kUmVxdWVzdBISCgRQb3J0GAEgASgDUgRQb3J0EhoKCFNlbmRQb3'
    'J0GAIgASgDUghTZW5kUG9ydA==');

@$core.Deprecated('Use startDeviceFoundResponseDescriptor instead')
const StartDeviceFoundResponse$json = {
  '1': 'StartDeviceFoundResponse',
  '2': [
    {'1': 'Success', '3': 1, '4': 1, '5': 8, '10': 'Success'},
  ],
};

/// Descriptor for `StartDeviceFoundResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startDeviceFoundResponseDescriptor = $convert.base64Decode(
    'ChhTdGFydERldmljZUZvdW5kUmVzcG9uc2USGAoHU3VjY2VzcxgBIAEoCFIHU3VjY2Vzcw==');

@$core.Deprecated('Use searchDeviceRequestDescriptor instead')
const SearchDeviceRequest$json = {
  '1': 'SearchDeviceRequest',
  '2': [
    {'1': 'Port', '3': 1, '4': 1, '5': 3, '10': 'Port'},
    {'1': 'ListenPort', '3': 2, '4': 1, '5': 3, '10': 'ListenPort'},
    {'1': 'ExpireTime', '3': 3, '4': 1, '5': 3, '10': 'ExpireTime'},
  ],
};

/// Descriptor for `SearchDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchDeviceRequestDescriptor = $convert.base64Decode(
    'ChNTZWFyY2hEZXZpY2VSZXF1ZXN0EhIKBFBvcnQYASABKANSBFBvcnQSHgoKTGlzdGVuUG9ydB'
    'gCIAEoA1IKTGlzdGVuUG9ydBIeCgpFeHBpcmVUaW1lGAMgASgDUgpFeHBpcmVUaW1l');

@$core.Deprecated('Use searchDeviceResponseDescriptor instead')
const SearchDeviceResponse$json = {
  '1': 'SearchDeviceResponse',
  '2': [
    {'1': 'Success', '3': 2, '4': 1, '5': 8, '10': 'Success'},
  ],
};

/// Descriptor for `SearchDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchDeviceResponseDescriptor = $convert.base64Decode(
    'ChRTZWFyY2hEZXZpY2VSZXNwb25zZRIYCgdTdWNjZXNzGAIgASgIUgdTdWNjZXNz');

@$core.Deprecated('Use deviceInfoDescriptor instead')
const DeviceInfo$json = {
  '1': 'DeviceInfo',
  '2': [
    {'1': 'DeviceName', '3': 1, '4': 1, '5': 9, '10': 'DeviceName'},
    {'1': 'DeviceOSType', '3': 2, '4': 1, '5': 9, '10': 'DeviceOSType'},
    {'1': 'DeviceArchType', '3': 3, '4': 1, '5': 9, '10': 'DeviceArchType'},
    {'1': 'Port', '3': 4, '4': 1, '5': 3, '10': 'Port'},
    {'1': 'IP', '3': 5, '4': 1, '5': 9, '10': 'IP'},
    {'1': 'TIme', '3': 6, '4': 1, '5': 3, '10': 'TIme'},
    {'1': 'Msg', '3': 7, '4': 1, '5': 9, '10': 'Msg'},
  ],
};

/// Descriptor for `DeviceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VJbmZvEh4KCkRldmljZU5hbWUYASABKAlSCkRldmljZU5hbWUSIgoMRGV2aWNlT1'
    'NUeXBlGAIgASgJUgxEZXZpY2VPU1R5cGUSJgoORGV2aWNlQXJjaFR5cGUYAyABKAlSDkRldmlj'
    'ZUFyY2hUeXBlEhIKBFBvcnQYBCABKANSBFBvcnQSDgoCSVAYBSABKAlSAklQEhIKBFRJbWUYBi'
    'ABKANSBFRJbWUSEAoDTXNnGAcgASgJUgNNc2c=');

@$core.Deprecated('Use getDeviceListRequestDescriptor instead')
const GetDeviceListRequest$json = {
  '1': 'GetDeviceListRequest',
};

/// Descriptor for `GetDeviceListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceListRequestDescriptor = $convert.base64Decode(
    'ChRHZXREZXZpY2VMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use getDeviceListResponseDescriptor instead')
const GetDeviceListResponse$json = {
  '1': 'GetDeviceListResponse',
  '2': [
    {'1': 'DeviceList', '3': 1, '4': 3, '5': 11, '6': '.DeviceInfo', '10': 'DeviceList'},
  ],
};

/// Descriptor for `GetDeviceListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceListResponseDescriptor = $convert.base64Decode(
    'ChVHZXREZXZpY2VMaXN0UmVzcG9uc2USKwoKRGV2aWNlTGlzdBgBIAMoCzILLkRldmljZUluZm'
    '9SCkRldmljZUxpc3Q=');

