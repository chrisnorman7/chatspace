import 'dart:io';

import 'package:logging/logging.dart';
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
      (dynamic event) {},
      onDone: () {
        user.logger.fine('Disconnected.');
        webSocket.close();
        users.remove(user);
      },
    );
  });
}
