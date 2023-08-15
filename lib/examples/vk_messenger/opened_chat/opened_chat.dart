import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/message.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/message_widget.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/message_input_field.dart';

class OpenedChat extends StatelessWidget {
  final User user;
  final String lastMessage;

  const OpenedChat({
    super.key,
    required this.user,
    required this.lastMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
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
          const MessageInputField(),
        ],
      ),
    );
  }

  AppBar appBar() {
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
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade100,
            child: Icon(
              Icons.camera_alt,
              color: Colors.blueGrey.shade300,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name} ${user.surname}',
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

final List<Message> messages = List.generate(
  30,
  (index) => Message(
    text: Randomizer.randomMessage(),
    type: MessageType.values[Random().nextInt(MessageType.values.length)],
  ),
);
