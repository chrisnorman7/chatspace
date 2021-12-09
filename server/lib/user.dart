/// Provides the [User] class.
import 'dart:io';

import 'package:logging/logging.dart';

/// A user in the chat room.
class User {
  /// Create an instance.
  User(this.webSocket) {
    createLogger();
  }

  /// The websocket the user is connected on.
  final WebSocket webSocket;

  /// The name the user wishes to go by.
  String? name;

  /// The logger to use.
  late Logger logger;

  /// Create a logger.
  void createLogger() {
    logger = Logger(name ?? 'Unauthenticated User');
  }
}
