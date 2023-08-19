import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/dialog_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/group_card.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/online_from_phone_widget.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';
import 'package:widgets_showcase/examples/vk_messenger/opened_chat/opened_chat.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class VKChatsPage extends StatelessWidget {
  const VKChatsPage({super.key});

  void openChat(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => OpenedChat(
        user: user,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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

  Container chatsFeed() {
    final users = MockUsers.users;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: users.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const DialogTile(
              title: 'Избранное',
              subtitle: 'Пересланное сообщение',
              leading: VKCircleAvatar(
                child: Icon(Icons.turned_in_not),
              ),
            );
          } else {
            final user = users[index - 1];

            return DialogTile(
              title: user.nickname,
              subtitle: user.lastMessage,
              onTap: () => openChat(context, user),
              leading: Stack(
                children: [
                  VKCircleAvatar.fromUser(user),
                  if (user.isOnline) const OnlineFromPhoneWidget(),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Container groupsFeed() {
    return Container(
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GroupCard.urfu(),
          GroupCard.games(),
          GroupCard.music(),
          GroupCard.meditation(),
        ],
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
