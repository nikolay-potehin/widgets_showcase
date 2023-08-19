import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class ContactsTile extends StatelessWidget {
  const ContactsTile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: VKCircleAvatar.fromUser(user),
        title: Text(
          user.nickname,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: Text(user.lastSeen),
        dense: true,
      ),
    );
  }
}
