///
//  Generated code. Do not modify.
//  source: proto/client.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userNameResponseDescriptor instead')
const UserNameResponse$json = const {
  '1': 'UserNameResponse',
};

/// Descriptor for `UserNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userNameResponseDescriptor = $convert.base64Decode('ChBVc2VyTmFtZVJlc3BvbnNl');
@$core.Deprecated('Use chatMessageResponseDescriptor instead')
const ChatMessageResponse$json = const {
  '1': 'ChatMessageResponse',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `ChatMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageResponseDescriptor = $convert.base64Decode('ChNDaGF0TWVzc2FnZVJlc3BvbnNlEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRISCgR0ZXh0GAIgASgJUgR0ZXh0');
@$core.Deprecated('Use chatIconResponseDescriptor instead')
const ChatIconResponse$json = const {
  '1': 'ChatIconResponse',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'iconName', '3': 2, '4': 1, '5': 9, '10': 'iconName'},
  ],
};

/// Descriptor for `ChatIconResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatIconResponseDescriptor = $convert.base64Decode('ChBDaGF0SWNvblJlc3BvbnNlEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghpY29uTmFtZRgCIAEoCVIIaWNvbk5hbWU=');
@$core.Deprecated('Use userJoinedDescriptor instead')
const UserJoined$json = const {
  '1': 'UserJoined',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `UserJoined`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userJoinedDescriptor = $convert.base64Decode('CgpVc2VySm9pbmVkEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZQ==');
@$core.Deprecated('Use userLeftDescriptor instead')
const UserLeft$json = const {
  '1': 'UserLeft',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `UserLeft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLeftDescriptor = $convert.base64Decode('CghVc2VyTGVmdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWU=');
@$core.Deprecated('Use clientCommandDescriptor instead')
const ClientCommand$json = const {
  '1': 'ClientCommand',
  '2': const [
    const {'1': 'userNameHandling', '3': 16, '4': 1, '5': 11, '6': '.UserNameResponse', '9': 0, '10': 'userNameHandling'},
    const {'1': 'chatMessage', '3': 17, '4': 1, '5': 11, '6': '.ChatMessageResponse', '9': 0, '10': 'chatMessage'},
    const {'1': 'chatIcon', '3': 18, '4': 1, '5': 11, '6': '.ChatIconResponse', '9': 0, '10': 'chatIcon'},
    const {'1': 'userJoined', '3': 19, '4': 1, '5': 11, '6': '.UserJoined', '9': 0, '10': 'userJoined'},
    const {'1': 'userLeft', '3': 20, '4': 1, '5': 11, '6': '.UserLeft', '9': 0, '10': 'userLeft'},
  ],
  '8': const [
    const {'1': 'CommandType'},
  ],
};

/// Descriptor for `ClientCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientCommandDescriptor = $convert.base64Decode('Cg1DbGllbnRDb21tYW5kEj8KEHVzZXJOYW1lSGFuZGxpbmcYECABKAsyES5Vc2VyTmFtZVJlc3BvbnNlSABSEHVzZXJOYW1lSGFuZGxpbmcSOAoLY2hhdE1lc3NhZ2UYESABKAsyFC5DaGF0TWVzc2FnZVJlc3BvbnNlSABSC2NoYXRNZXNzYWdlEi8KCGNoYXRJY29uGBIgASgLMhEuQ2hhdEljb25SZXNwb25zZUgAUghjaGF0SWNvbhItCgp1c2VySm9pbmVkGBMgASgLMgsuVXNlckpvaW5lZEgAUgp1c2VySm9pbmVkEicKCHVzZXJMZWZ0GBQgASgLMgkuVXNlckxlZnRIAFIIdXNlckxlZnRCDQoLQ29tbWFuZFR5cGU=');
