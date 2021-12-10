import 'dart:io';

import 'package:logging/logging.dart';
import 'package:server/proto.dart';
import 'package:server/user.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.loggerName} (${record.level.name}): ${record.time}: '
        '${record.message}');
  });
  final users = <User>[];
  final rootLogger = Logger('Root');
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 7890);
  rootLogger
      .fine('Server running on ${server.address.address}:${server.port}.');
  server.listen((request) async {
    rootLogger.fine(
        'Incoming connection from ${request.connectionInfo?.remoteAddress}.');
    final webSocket = await WebSocketTransformer.upgrade(request);
    final user = User(webSocket);
    users.add(user);
    webSocket.listen(
      (dynamic event) {
        if (event is List<int>) {
          final command = ServerCommand.fromBuffer(event);
          switch (command.whichCommandType()) {
            case ServerCommand_CommandType.username:
              if (user.name != null) {
                return user.sendSystemMessage('You cannot rename yourself.');
              }
              user
                ..name = command.ensureUsername().username
                ..createLogger()
                ..logger.fine('Authenticated.');
              final userJoined =
                  ClientCommand(userJoined: UserJoined(username: user.name));
              for (final u in users) {
                u.sendCommand(userJoined);
              }
              break;
            case ServerCommand_CommandType.notSet:
              user.sendSystemMessage('Invalid command.');
              break;
            case ServerCommand_CommandType.chatMessage:
              if (user.name == null) {
                return user.sendSystemMessage('You must set your name first.');
              }
              final message = command.ensureChatMessage().text;
              final firstPerson = ClientCommand(
                  chatMessage:
                      ChatMessageResponse(username: 'You', text: message));
              final everyone = ClientCommand(
                  chatMessage:
                      ChatMessageResponse(username: user.name, text: message));
              for (final u in users) {
                u.sendCommand(u == user ? firstPerson : everyone);
              }
              break;
            case ServerCommand_CommandType.chatIcon:
              if (user.name == null) {
                return user.sendSystemMessage('You must set your name first.');
              }
              final iconName = command.ensureChatIcon().name;
              final firstPerson = ClientCommand(
                  chatIcon: ChatIconResponse(
                      iconName: iconName, username: user.name));
              final everyone = ClientCommand(
                  chatIcon: ChatIconResponse(
                      iconName: iconName, username: user.name));
              for (final u in users) {
                u.sendCommand(u == user ? firstPerson : everyone);
              }
              break;
          }
        }
      },
      onDone: () {
        user.logger.fine('Disconnected.');
        webSocket.close();
        users.remove(user);
        final userLeft = ClientCommand(userLeft: UserLeft(username: user.name));
        for (final u in users) {
          u.sendCommand(userLeft);
        }
      },
    );
  });
}
