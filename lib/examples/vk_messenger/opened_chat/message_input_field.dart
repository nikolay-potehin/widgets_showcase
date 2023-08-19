import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/message.dart';

class MessageInputField extends StatefulWidget {
  final void Function(Message message) onMessageSend;

  const MessageInputField({
    super.key,
    required this.onMessageSend,
  });

  @override
  State<MessageInputField> createState() => _MessageInputFieldState();
}

class _MessageInputFieldState extends State<MessageInputField> {
  final controller = TextEditingController();
  bool isMessageEmpty = true;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onMessageSend() {
    if (controller.text.trim().isNotEmpty) {
      widget.onMessageSend(
        Message(
          text: controller.text.trim(),
          type: MessageType.sended,
        ),
      );
    }
    controller.text = '';
  }

  void onMessageChanged(String value) {
    if (value.isEmpty && !isMessageEmpty) {
      setState(() => isMessageEmpty = true);
    } else if (value.isNotEmpty && isMessageEmpty) {
      setState(() => isMessageEmpty = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_link,
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration.collapsed(
              hintText: 'Сообщение',
            ),
            onChanged: onMessageChanged,
          ),
        ),
        if (isMessageEmpty) ...[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mood,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle_outline,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
        if (!isMessageEmpty) ...[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mood,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: onMessageSend,
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
        ],
      ],
    );
  }
}
