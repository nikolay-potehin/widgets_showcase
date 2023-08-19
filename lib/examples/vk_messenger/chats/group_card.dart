import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class GroupCard extends StatelessWidget {
  final Widget? child;
  final String? groupName;
  final Color? color;

  const GroupCard({
    super.key,
    this.color,
    this.groupName,
    this.child,
  });

  factory GroupCard.urfu() => const GroupCard(
        color: Colors.red,
        groupName: 'УрФУ Группа',
        child: Text(
          'У',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      );

  factory GroupCard.games() => const GroupCard(
        color: Colors.green,
        groupName: 'Игры 2023',
        child: Icon(
          Icons.sports_esports,
          color: Colors.white,
          size: 30,
        ),
      );

  factory GroupCard.music() => const GroupCard(
        color: Colors.orange,
        groupName: 'Music Mix 2023',
        child: Icon(
          Icons.music_note,
          color: Colors.white,
          size: 30,
        ),
      );

  factory GroupCard.meditation() => const GroupCard(
        color: Colors.indigo,
        groupName: 'Meditations',
        child: Icon(
          Icons.self_improvement,
          color: Colors.white,
          size: 30,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VKCircleAvatar.group(
              color: color,
              child: child ??
                  const Text(
                    '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
            ),
            const SizedBox(height: 6),
            Text(
              groupName ?? 'Название',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

final colors = [
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.deepPurple,
];
