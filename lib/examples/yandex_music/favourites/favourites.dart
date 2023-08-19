import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/yandex_music/favourites/favourites_fab.dart';
import 'package:widgets_showcase/examples/yandex_music/music_icon_button.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: const Center(
        child: Text(
          'Favourites',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: const FavouritesFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: const Text('Коллекция'),
      actions: [
        MusicIconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline),
        ),
        MusicIconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined),
        ),
        MusicIconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
