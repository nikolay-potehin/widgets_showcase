import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';

class DialogTile extends StatelessWidget {
  const DialogTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.leading,
  });

  final String title;
  final String subtitle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
      leading: leading ??
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade100,
            child: Icon(
              Icons.camera_alt,
              color: Colors.blueGrey.shade300,
            ),
          ),
      onTap: () {},
      trailing: Text(
        Randomizer.randomTimeSpan(),
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
