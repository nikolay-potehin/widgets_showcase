import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/dialog_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/group_card.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/opened_chat.dart';

class VKChatsPage extends StatelessWidget {
  const VKChatsPage({super.key});

  void openChat(BuildContext context, User user, String lastMessage) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => OpenedChat(
        user: user,
        lastMessage: lastMessage,
      ),
    ));
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.edit_outlined,
          color: Colors.blue,
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
          final user = users[index - 1];
          final lastMessage = Randomizer.randomMessage();

          return DialogTile(
            title: '${user.name} ${user.surname}',
            subtitle: lastMessage,
            onTap: () => openChat(context, user, lastMessage),
          );
        }
      },
    );
  }

  Container groupsFeed() {
    return Container(
      color: Colors.grey.shade200,
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
