import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/yandex_music/favourites/favourites.dart';
import 'package:widgets_showcase/examples/yandex_music/music_player_tile.dart';
import 'package:widgets_showcase/examples/yandex_music/my_wave.dart';
import 'package:widgets_showcase/examples/yandex_music/podcasts.dart';

class YandexMusic extends StatefulWidget {
  const YandexMusic({super.key});

  @override
  State<YandexMusic> createState() => _YandexMusicState();
}

class _YandexMusicState extends State<YandexMusic> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const MusicPlayerTile(),
          Divider(
            height: 1,
            color: Colors.grey.shade900,
            thickness: 1,
          ),
          BottomNavigationBar(
            backgroundColor: Colors.black,
            items: _bottomNavbarItems,
            currentIndex: currentIndex,
            onTap: (value) => setState(() => currentIndex = value),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            unselectedItemColor: Colors.grey.shade600,
            selectedItemColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

const _bottomNavbarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.music_note_outlined),
    activeIcon: Icon(Icons.music_note),
    label: 'my wave',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.headset_mic_outlined),
    activeIcon: Icon(Icons.headset_mic),
    label: 'podcasts',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_border_rounded),
    activeIcon: Icon(Icons.favorite_rounded),
    label: 'favourite',
  ),
];

const _pages = [
  MyWavePage(),
  PodcastsPage(),
  FavouritesPage(),
];
