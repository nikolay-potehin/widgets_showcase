import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/dialog_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/group_card.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';

class VKChatsPage extends StatelessWidget {
  const VKChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              groupsFeed(),
              chatsFeed(),
            ],
          ),
        ),
      ),
    );
  }

  ListView chatsFeed() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: users.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const DialogTile(
            title: 'Избранное',
            subtitle: 'Пересланное сообщение',
            leading: CircleAvatar(
              child: Icon(Icons.turned_in_not),
            ),
          );
        } else {
          final item = users[index - 1];

          return DialogTile(
            title: '${item.name} ${item.surname}',
            subtitle: Randomizer.randomMessage(),
          );
        }
      },
    );
  }

  Container groupsFeed() {
    return Container(
      color: Colors.grey.shade200,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(4, (index) => const GroupCard()),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.grey.shade200,
      elevation: 0,
      title: const Text(
        'Чаты',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.archive_outlined),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.blue,
        ),
      ],
    );
  }
}
