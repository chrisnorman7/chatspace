/// Provides chat message classes.
library chat_message;

/// The type of a [ChatMessage].
enum ChatMessageType {
  /// A simple text message.
  text,

  /// An icon.
  icon,
}

/// A chat message from the server.
class ChatMessage {
  /// Create an instance.
  const ChatMessage(this.type, this.sender, this.text);

  /// The sender of this message.
  final String sender;

  /// The type of this message.
  final ChatMessageType type;

  /// The text of the message.
  final String text;
}
