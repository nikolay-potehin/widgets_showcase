import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class DialogTile extends StatelessWidget {
  const DialogTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final Widget? leading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: leading ?? VKCircleAvatar.noImage(),
      onTap: onTap ?? () {},
      trailing: Text(
        Randomizer.randomWeekDay(),
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
