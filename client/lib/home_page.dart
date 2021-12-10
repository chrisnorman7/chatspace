/// Provides the [HomePage] class.
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'chat_message.dart';
import 'gen/assets.gen.dart';
import 'proto.dart';

/// The main app screen.
class HomePage extends StatefulWidget {
  /// Create an instance.
  const HomePage({Key? key}) : super(key: key);

  /// Create state for this widget.
  @override
  _HomePageState createState() => _HomePageState();
}

/// State for [HomePage].
class _HomePageState extends State<HomePage> {
  /// The websocket channel to use.
  WebSocketChannel? _webSocketChannel;

  /// The form key to use.
  late final GlobalKey<FormState> _formKey;

  /// The controller for the username.
  late final TextEditingController _nameController;

  /// The audio player to use.
  late final AudioPlayer _audioPlayer;

  /// The messages that have come in.
  late final List<ChatMessage> _messages;

  /// Connect the websocket.
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _nameController = TextEditingController();
    _doConnect();
    _audioPlayer = AudioPlayer();
    _messages = <ChatMessage>[];
  }

  /// Build a widget.
  @override
  Widget build(BuildContext context) => StreamBuilder<dynamic>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final dynamic data = snapshot.requireData;
            if (data is List<int>) {
              final command = ClientCommand.fromBuffer(data);
              switch (command.whichCommandType()) {
                case ClientCommand_CommandType.chatMessage:
                  playAsset(Assets.sounds.message);
                  final chatMessage = command.ensureChatMessage();
                  _messages.add(ChatMessage(ChatMessageType.text,
                      chatMessage.username, chatMessage.text));
                  break;
                case ClientCommand_CommandType.chatIcon:
                  playAsset(Assets.sounds.icon);
                  final chatIcon = command.ensureChatIcon();
                  _messages.add(ChatMessage(ChatMessageType.icon,
                      chatIcon.username, chatIcon.iconName));
                  break;
                case ClientCommand_CommandType.userJoined:
                  final username = command.ensureUserJoined().username;
                  playAsset(Assets.sounds.connect);
                  _messages.add(ChatMessage(ChatMessageType.text, 'System',
                      '$username has joined the server.'));
                  break;
                case ClientCommand_CommandType.userLeft:
                  final username = command.ensureUserLeft().username;
                  playAsset(Assets.sounds.disconnect);
                  _messages.add(ChatMessage(ChatMessageType.text, 'System',
                      '$username has left the server.'));
                  break;
                case ClientCommand_CommandType.notSet:
                  _messages.add(const ChatMessage(
                      ChatMessageType.text, 'Error', 'Invalid command.'));
                  break;
              }
            }
            return Scaffold(
              appBar: AppBar(
                title: const Text('Chatroom'),
              ),
              body: ListView.builder(
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return ListTile(
                    leading: Text('${message.sender}:'),
                    subtitle: Text(message.text),
                  );
                },
                itemCount: _messages.length,
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Connect'),
              ),
              body: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: _nameController,
                      decoration: const InputDecoration(
                          labelText: 'Your name on the server'),
                      onFieldSubmitted: (value) => _doSubmit(),
                      validator: (value) => value == null || value.isEmpty
                          ? 'Names must not be blank'
                          : null,
                    ),
                    ElevatedButton(
                      onPressed: _doSubmit,
                      child: const Icon(Icons.connect_without_contact_rounded,
                          semanticLabel: 'Connect'),
                    )
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: const Center(
                child: Text('Failed to connect.'),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Connecting'),
              ),
              body: const CircularProgressIndicator(),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Unknown State'),
              ),
              body: ListView(
                children: [
                  ListTile(
                    title: const Text('Connection State'),
                    subtitle: Text(snapshot.connectionState.name),
                  )
                ],
              ),
            );
          }
        },
        stream: _webSocketChannel?.stream,
      );

  /// Connect the websocket.
  void _doConnect() {
    _webSocketChannel =
        WebSocketChannel.connect(Uri.parse('ws://backstreets.site:7890'));
  }

  /// Submit the form.
  void _doSubmit() {
    if (_formKey.currentState?.validate() == true) {
      final name = _nameController.text;
      final command = ServerCommand(username: UserNameRequest(username: name));
      sendCommand(command);
    }
  }

  /// Send a command.
  void sendCommand(ServerCommand command) =>
      _webSocketChannel!.sink.add(command.writeToBuffer());

  /// Play the given [asset].
  ///
  /// The returned duration is the duration of the loaded asset.
  Future<Duration?> playAsset(String asset) async {
    final duration = await _audioPlayer.setAsset(asset);
    await _audioPlayer.play();
    return duration;
  }
}
