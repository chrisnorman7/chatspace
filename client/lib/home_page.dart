/// Provides the [HomePage] class.
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

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

  /// Connect the websocket.
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _nameController = TextEditingController();
    _doConnect();
  }

  /// Build a widget.
  @override
  Widget build(BuildContext context) => StreamBuilder<dynamic>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Chatroom'),
              ),
              body: Text(snapshot.requireData.toString()),
            );
          } else if (snapshot.connectionState == ConnectionState.none) {
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
          } else if (snapshot.connectionState == ConnectionState.waiting) {
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
      // ignore: avoid_print
      print('Connecting as $name.');
    }
  }
}
