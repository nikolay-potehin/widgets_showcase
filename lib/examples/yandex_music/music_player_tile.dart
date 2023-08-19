import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/yandex_music/music_icon_button.dart';

class MusicPlayerTile extends StatefulWidget {
  const MusicPlayerTile({
    super.key,
  });

  @override
  State<MusicPlayerTile> createState() => _MusicPlayerTileState();
}

class _MusicPlayerTileState extends State<MusicPlayerTile> {
  bool liked = false;
  bool paused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          height: 1,
          thickness: 3,
          color: Colors.amber,
          endIndent: 240,
        ),
        ListTile(
          tileColor: Colors.black,
          iconColor: Colors.white,
          textColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          dense: true,
          onTap: () {},
          leading: MusicIconButton(
            onPressed: () => setState(() => liked = !liked),
            icon: Icon(
              liked ? Icons.favorite : Icons.favorite_border,
              color: Colors.amber,
            ),
          ),
          title: const Text(
            'The Curse of the Fold',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          subtitle: const Text(
            'Shawn James',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          visualDensity: VisualDensity.compact,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MusicIconButton(
                onPressed: () {},
                icon: const Icon(Icons.tv),
              ),
              MusicIconButton(
                onPressed: () => setState(() => paused = !paused),
                icon: Icon(
                  paused ? Icons.play_arrow : Icons.pause,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
