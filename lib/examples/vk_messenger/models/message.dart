enum MessageType { received, sended }

class Message {
  final String text;
  final MessageType type;

  const Message({
    required this.text,
    required this.type,
  });
}
