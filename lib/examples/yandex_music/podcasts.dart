import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/yandex_music/music_icon_button.dart';

class PodcastsPage extends StatelessWidget {
  const PodcastsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: const Center(
        child: Text(
          'Podcasts',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: const Text('Подкасты и книги'),
      actions: [
        MusicIconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
