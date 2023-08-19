import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/yandex_music/music_icon_button.dart';

class MyWavePage extends StatelessWidget {
  const MyWavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Яндекс Музыка'),
        centerTitle: true,
        leading: MusicIconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        actions: [
          MusicIconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          'My Wave',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
