enum MessageType { received, sended }

class Message {
  final String text;
  final MessageType type;
  final DateTime sendTime;

  Message({
    required this.text,
    required this.type,
  }) : sendTime = DateTime.now().toLocal();

  String get sendTimeDisplay {
    final hour = sendTime.hour.toString().padLeft(2, '0');
    final minute = sendTime.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }
}
