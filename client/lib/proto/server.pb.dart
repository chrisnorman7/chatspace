///
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserNameRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..hasRequiredFields = false
  ;

  UserNameRequest._() : super();
  factory UserNameRequest({
    $core.String? username,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    return _result;
  }
  factory UserNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserNameRequest clone() => UserNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserNameRequest copyWith(void Function(UserNameRequest) updates) => super.copyWith((message) => updates(message as UserNameRequest)) as UserNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserNameRequest create() => UserNameRequest._();
  UserNameRequest createEmptyInstance() => create();
  static $pb.PbList<UserNameRequest> createRepeated() => $pb.PbList<UserNameRequest>();
  @$core.pragma('dart2js:noInline')
  static UserNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNameRequest>(create);
  static UserNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

class ChatMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatMessageRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  ChatMessageRequest._() : super();
  factory ChatMessageRequest({
    $core.String? text,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory ChatMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessageRequest clone() => ChatMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessageRequest copyWith(void Function(ChatMessageRequest) updates) => super.copyWith((message) => updates(message as ChatMessageRequest)) as ChatMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessageRequest create() => ChatMessageRequest._();
  ChatMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ChatMessageRequest> createRepeated() => $pb.PbList<ChatMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ChatMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessageRequest>(create);
  static ChatMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class ChatIconRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatIconRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ChatIconRequest._() : super();
  factory ChatIconRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory ChatIconRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatIconRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatIconRequest clone() => ChatIconRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatIconRequest copyWith(void Function(ChatIconRequest) updates) => super.copyWith((message) => updates(message as ChatIconRequest)) as ChatIconRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatIconRequest create() => ChatIconRequest._();
  ChatIconRequest createEmptyInstance() => create();
  static $pb.PbList<ChatIconRequest> createRepeated() => $pb.PbList<ChatIconRequest>();
  @$core.pragma('dart2js:noInline')
  static ChatIconRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatIconRequest>(create);
  static ChatIconRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum ServerCommand_CommandType {
  username, 
  chatMessage, 
  chatIcon, 
  notSet
}

class ServerCommand extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerCommand_CommandType> _ServerCommand_CommandTypeByTag = {
    16 : ServerCommand_CommandType.username,
    17 : ServerCommand_CommandType.chatMessage,
    18 : ServerCommand_CommandType.chatIcon,
    0 : ServerCommand_CommandType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerCommand', createEmptyInstance: create)
    ..oo(0, [16, 17, 18])
    ..aOM<UserNameRequest>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username', subBuilder: UserNameRequest.create)
    ..aOM<ChatMessageRequest>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatMessage', protoName: 'chatMessage', subBuilder: ChatMessageRequest.create)
    ..aOM<ChatIconRequest>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatIcon', protoName: 'chatIcon', subBuilder: ChatIconRequest.create)
    ..hasRequiredFields = false
  ;

  ServerCommand._() : super();
  factory ServerCommand({
    UserNameRequest? username,
    ChatMessageRequest? chatMessage,
    ChatIconRequest? chatIcon,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (chatMessage != null) {
      _result.chatMessage = chatMessage;
    }
    if (chatIcon != null) {
      _result.chatIcon = chatIcon;
    }
    return _result;
  }
  factory ServerCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerCommand clone() => ServerCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerCommand copyWith(void Function(ServerCommand) updates) => super.copyWith((message) => updates(message as ServerCommand)) as ServerCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerCommand create() => ServerCommand._();
  ServerCommand createEmptyInstance() => create();
  static $pb.PbList<ServerCommand> createRepeated() => $pb.PbList<ServerCommand>();
  @$core.pragma('dart2js:noInline')
  static ServerCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerCommand>(create);
  static ServerCommand? _defaultInstance;

  ServerCommand_CommandType whichCommandType() => _ServerCommand_CommandTypeByTag[$_whichOneof(0)]!;
  void clearCommandType() => clearField($_whichOneof(0));

  @$pb.TagNumber(16)
  UserNameRequest get username => $_getN(0);
  @$pb.TagNumber(16)
  set username(UserNameRequest v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(16)
  void clearUsername() => clearField(16);
  @$pb.TagNumber(16)
  UserNameRequest ensureUsername() => $_ensure(0);

  @$pb.TagNumber(17)
  ChatMessageRequest get chatMessage => $_getN(1);
  @$pb.TagNumber(17)
  set chatMessage(ChatMessageRequest v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasChatMessage() => $_has(1);
  @$pb.TagNumber(17)
  void clearChatMessage() => clearField(17);
  @$pb.TagNumber(17)
  ChatMessageRequest ensureChatMessage() => $_ensure(1);

  @$pb.TagNumber(18)
  ChatIconRequest get chatIcon => $_getN(2);
  @$pb.TagNumber(18)
  set chatIcon(ChatIconRequest v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasChatIcon() => $_has(2);
  @$pb.TagNumber(18)
  void clearChatIcon() => clearField(18);
  @$pb.TagNumber(18)
  ChatIconRequest ensureChatIcon() => $_ensure(2);
}

