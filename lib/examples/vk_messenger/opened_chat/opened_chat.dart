import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/message.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/message_widget.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/message_input_field.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class OpenedChat extends StatefulWidget {
  final User user;

  const OpenedChat({
    super.key,
    required this.user,
  });

  @override
  State<OpenedChat> createState() => _OpenedChatState();
}

class _OpenedChatState extends State<OpenedChat> {
  late final String lastMessage;

  @override
  void initState() {
    super.initState();
    lastMessage = widget.user.lastMessage;
  }

  late final List<Message> messages = List.generate(
    30,
    growable: true,
    (index) => Message(
      text: Randomizer.randomMessage(),
      type: MessageType.values[Random().nextInt(MessageType.values.length)],
    ),
  )..insert(
      0,
      Message(
        text: lastMessage,
        type: MessageType.received,
      ));

  void sendMessage(Message message, {bool receiveAnswerInFuture = true}) {
    setState(() {
      messages.insert(0, message);
    });

    if (receiveAnswerInFuture) {
      Future.delayed(
        const Duration(milliseconds: 1800),
        () => sendMessage(
          Message(
            text: Randomizer.randomMessage(),
            type: MessageType.received,
          ),
          receiveAnswerInFuture: false,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.user),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.blue.shade200,
                  width: double.infinity,
                  height: double.infinity,
                ),
                ListView.builder(
                  reverse: true,
                  padding: const EdgeInsets.all(10),
                  itemCount: messages.length,
                  itemBuilder: (context, index) =>
                      MessageWidget(message: messages[index]),
                ),
              ],
            ),
          ),
          MessageInputField(
            onMessageSend: sendMessage,
          ),
        ],
      ),
    );
  }

  AppBar appBar(User user) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue,
      elevation: 2,
      titleSpacing: 5,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.phone_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam_outlined, size: 28),
        ),
      ],
      title: Row(
        children: [
          VKCircleAvatar.fromUser(user),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.user.name} ${widget.user.surname}',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'был(а) 15 минут назад',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
