import 'package:flutter/material.dart';

class MessageInputField extends StatefulWidget {
  const MessageInputField({
    super.key,
  });

  @override
  State<MessageInputField> createState() => _MessageInputFieldState();
}

class _MessageInputFieldState extends State<MessageInputField> {
  bool isMessageEmpty = true;

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
            decoration: const InputDecoration.collapsed(
              hintText: 'Сообщение',
            ),
            onChanged: onMessageChanged,
          ),
        ),
        if (isMessageEmpty) ...emptyMessageButtons,
        if (!isMessageEmpty) ...hasMessageButtons,
      ],
    );
  }
}

final List<Widget> emptyMessageButtons = [
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
];

final List<Widget> hasMessageButtons = [
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
      Icons.send,
      color: Colors.blue,
    ),
  ),
];
