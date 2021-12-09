///
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userNameRequestDescriptor instead')
const UserNameRequest$json = const {
  '1': 'UserNameRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `UserNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userNameRequestDescriptor = $convert.base64Decode('Cg9Vc2VyTmFtZVJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1l');
@$core.Deprecated('Use chatMessageRequestDescriptor instead')
const ChatMessageRequest$json = const {
  '1': 'ChatMessageRequest',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `ChatMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageRequestDescriptor = $convert.base64Decode('ChJDaGF0TWVzc2FnZVJlcXVlc3QSEgoEdGV4dBgBIAEoCVIEdGV4dA==');
@$core.Deprecated('Use chatIconRequestDescriptor instead')
const ChatIconRequest$json = const {
  '1': 'ChatIconRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ChatIconRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatIconRequestDescriptor = $convert.base64Decode('Cg9DaGF0SWNvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use serverCommandDescriptor instead')
const ServerCommand$json = const {
  '1': 'ServerCommand',
  '2': const [
    const {'1': 'username', '3': 16, '4': 1, '5': 11, '6': '.UserNameRequest', '9': 0, '10': 'username'},
    const {'1': 'chatMessage', '3': 17, '4': 1, '5': 11, '6': '.ChatMessageRequest', '9': 0, '10': 'chatMessage'},
    const {'1': 'chatIcon', '3': 18, '4': 1, '5': 11, '6': '.ChatIconRequest', '9': 0, '10': 'chatIcon'},
  ],
  '8': const [
    const {'1': 'CommandType'},
  ],
};

/// Descriptor for `ServerCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverCommandDescriptor = $convert.base64Decode('Cg1TZXJ2ZXJDb21tYW5kEi4KCHVzZXJuYW1lGBAgASgLMhAuVXNlck5hbWVSZXF1ZXN0SABSCHVzZXJuYW1lEjcKC2NoYXRNZXNzYWdlGBEgASgLMhMuQ2hhdE1lc3NhZ2VSZXF1ZXN0SABSC2NoYXRNZXNzYWdlEi4KCGNoYXRJY29uGBIgASgLMhAuQ2hhdEljb25SZXF1ZXN0SABSCGNoYXRJY29uQg0KC0NvbW1hbmRUeXBl');
