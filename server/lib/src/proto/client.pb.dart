///
//  Generated code. Do not modify.
//  source: proto/client.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserNameResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UserNameResponse._() : super();
  factory UserNameResponse() => create();
  factory UserNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserNameResponse clone() => UserNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserNameResponse copyWith(void Function(UserNameResponse) updates) => super.copyWith((message) => updates(message as UserNameResponse)) as UserNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserNameResponse create() => UserNameResponse._();
  UserNameResponse createEmptyInstance() => create();
  static $pb.PbList<UserNameResponse> createRepeated() => $pb.PbList<UserNameResponse>();
  @$core.pragma('dart2js:noInline')
  static UserNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserNameResponse>(create);
  static UserNameResponse? _defaultInstance;
}

class ChatMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatMessageResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  ChatMessageResponse._() : super();
  factory ChatMessageResponse({
    $core.String? username,
    $core.String? text,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory ChatMessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessageResponse clone() => ChatMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessageResponse copyWith(void Function(ChatMessageResponse) updates) => super.copyWith((message) => updates(message as ChatMessageResponse)) as ChatMessageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessageResponse create() => ChatMessageResponse._();
  ChatMessageResponse createEmptyInstance() => create();
  static $pb.PbList<ChatMessageResponse> createRepeated() => $pb.PbList<ChatMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static ChatMessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessageResponse>(create);
  static ChatMessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class ChatIconResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatIconResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconName', protoName: 'iconName')
    ..hasRequiredFields = false
  ;

  ChatIconResponse._() : super();
  factory ChatIconResponse({
    $core.String? username,
    $core.String? iconName,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (iconName != null) {
      _result.iconName = iconName;
    }
    return _result;
  }
  factory ChatIconResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatIconResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatIconResponse clone() => ChatIconResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatIconResponse copyWith(void Function(ChatIconResponse) updates) => super.copyWith((message) => updates(message as ChatIconResponse)) as ChatIconResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatIconResponse create() => ChatIconResponse._();
  ChatIconResponse createEmptyInstance() => create();
  static $pb.PbList<ChatIconResponse> createRepeated() => $pb.PbList<ChatIconResponse>();
  @$core.pragma('dart2js:noInline')
  static ChatIconResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatIconResponse>(create);
  static ChatIconResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get iconName => $_getSZ(1);
  @$pb.TagNumber(2)
  set iconName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIconName() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconName() => clearField(2);
}

class UserJoined extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserJoined', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..hasRequiredFields = false
  ;

  UserJoined._() : super();
  factory UserJoined({
    $core.String? username,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    return _result;
  }
  factory UserJoined.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserJoined.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserJoined clone() => UserJoined()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserJoined copyWith(void Function(UserJoined) updates) => super.copyWith((message) => updates(message as UserJoined)) as UserJoined; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserJoined create() => UserJoined._();
  UserJoined createEmptyInstance() => create();
  static $pb.PbList<UserJoined> createRepeated() => $pb.PbList<UserJoined>();
  @$core.pragma('dart2js:noInline')
  static UserJoined getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserJoined>(create);
  static UserJoined? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

class UserLeft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserLeft', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..hasRequiredFields = false
  ;

  UserLeft._() : super();
  factory UserLeft({
    $core.String? username,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    return _result;
  }
  factory UserLeft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLeft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLeft clone() => UserLeft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLeft copyWith(void Function(UserLeft) updates) => super.copyWith((message) => updates(message as UserLeft)) as UserLeft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserLeft create() => UserLeft._();
  UserLeft createEmptyInstance() => create();
  static $pb.PbList<UserLeft> createRepeated() => $pb.PbList<UserLeft>();
  @$core.pragma('dart2js:noInline')
  static UserLeft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLeft>(create);
  static UserLeft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

enum ClientCommand_CommandType {
  userNameHandling, 
  chatMessage, 
  chatIcon, 
  userJoined, 
  userLeft, 
  notSet
}

class ClientCommand extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientCommand_CommandType> _ClientCommand_CommandTypeByTag = {
    16 : ClientCommand_CommandType.userNameHandling,
    17 : ClientCommand_CommandType.chatMessage,
    18 : ClientCommand_CommandType.chatIcon,
    19 : ClientCommand_CommandType.userJoined,
    20 : ClientCommand_CommandType.userLeft,
    0 : ClientCommand_CommandType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientCommand', createEmptyInstance: create)
    ..oo(0, [16, 17, 18, 19, 20])
    ..aOM<UserNameResponse>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userNameHandling', protoName: 'userNameHandling', subBuilder: UserNameResponse.create)
    ..aOM<ChatMessageResponse>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatMessage', protoName: 'chatMessage', subBuilder: ChatMessageResponse.create)
    ..aOM<ChatIconResponse>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chatIcon', protoName: 'chatIcon', subBuilder: ChatIconResponse.create)
    ..aOM<UserJoined>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userJoined', protoName: 'userJoined', subBuilder: UserJoined.create)
    ..aOM<UserLeft>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userLeft', protoName: 'userLeft', subBuilder: UserLeft.create)
    ..hasRequiredFields = false
  ;

  ClientCommand._() : super();
  factory ClientCommand({
    UserNameResponse? userNameHandling,
    ChatMessageResponse? chatMessage,
    ChatIconResponse? chatIcon,
    UserJoined? userJoined,
    UserLeft? userLeft,
  }) {
    final _result = create();
    if (userNameHandling != null) {
      _result.userNameHandling = userNameHandling;
    }
    if (chatMessage != null) {
      _result.chatMessage = chatMessage;
    }
    if (chatIcon != null) {
      _result.chatIcon = chatIcon;
    }
    if (userJoined != null) {
      _result.userJoined = userJoined;
    }
    if (userLeft != null) {
      _result.userLeft = userLeft;
    }
    return _result;
  }
  factory ClientCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientCommand clone() => ClientCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientCommand copyWith(void Function(ClientCommand) updates) => super.copyWith((message) => updates(message as ClientCommand)) as ClientCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientCommand create() => ClientCommand._();
  ClientCommand createEmptyInstance() => create();
  static $pb.PbList<ClientCommand> createRepeated() => $pb.PbList<ClientCommand>();
  @$core.pragma('dart2js:noInline')
  static ClientCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientCommand>(create);
  static ClientCommand? _defaultInstance;

  ClientCommand_CommandType whichCommandType() => _ClientCommand_CommandTypeByTag[$_whichOneof(0)]!;
  void clearCommandType() => clearField($_whichOneof(0));

  @$pb.TagNumber(16)
  UserNameResponse get userNameHandling => $_getN(0);
  @$pb.TagNumber(16)
  set userNameHandling(UserNameResponse v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasUserNameHandling() => $_has(0);
  @$pb.TagNumber(16)
  void clearUserNameHandling() => clearField(16);
  @$pb.TagNumber(16)
  UserNameResponse ensureUserNameHandling() => $_ensure(0);

  @$pb.TagNumber(17)
  ChatMessageResponse get chatMessage => $_getN(1);
  @$pb.TagNumber(17)
  set chatMessage(ChatMessageResponse v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasChatMessage() => $_has(1);
  @$pb.TagNumber(17)
  void clearChatMessage() => clearField(17);
  @$pb.TagNumber(17)
  ChatMessageResponse ensureChatMessage() => $_ensure(1);

  @$pb.TagNumber(18)
  ChatIconResponse get chatIcon => $_getN(2);
  @$pb.TagNumber(18)
  set chatIcon(ChatIconResponse v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasChatIcon() => $_has(2);
  @$pb.TagNumber(18)
  void clearChatIcon() => clearField(18);
  @$pb.TagNumber(18)
  ChatIconResponse ensureChatIcon() => $_ensure(2);

  @$pb.TagNumber(19)
  UserJoined get userJoined => $_getN(3);
  @$pb.TagNumber(19)
  set userJoined(UserJoined v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasUserJoined() => $_has(3);
  @$pb.TagNumber(19)
  void clearUserJoined() => clearField(19);
  @$pb.TagNumber(19)
  UserJoined ensureUserJoined() => $_ensure(3);

  @$pb.TagNumber(20)
  UserLeft get userLeft => $_getN(4);
  @$pb.TagNumber(20)
  set userLeft(UserLeft v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasUserLeft() => $_has(4);
  @$pb.TagNumber(20)
  void clearUserLeft() => clearField(20);
  @$pb.TagNumber(20)
  UserLeft ensureUserLeft() => $_ensure(4);
}

