import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class GoogleBottomBar extends StatefulWidget {
  const GoogleBottomBar({super.key});

  @override
  State<GoogleBottomBar> createState() => _GoogleBottomBarState();
}

class _GoogleBottomBarState extends State<GoogleBottomBar> {
  final _pagesTitles = ['Home', 'Likes', 'Search', 'Profile'];

  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Google Bottom Bar',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _pagesTitles[pageIndex],
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: pageIndex,
        items: _bottomBarItems,
        unselectedItemColor: Colors.black54,
        onTap: (int currentIndex) {
          pageIndex = currentIndex;
          setState(() {});
        },
      ),
    );
  }
}

final _bottomBarItems = [
  SalomonBottomBarItem(
    title: const Text('Home'),
    icon: const Icon(Icons.home_outlined),
    activeIcon: const Icon(Icons.home),
    selectedColor: Colors.purple,
  ),
  SalomonBottomBarItem(
    title: const Text('Likes'),
    icon: const Icon(Icons.favorite_border),
    activeIcon: const Icon(Icons.favorite),
    selectedColor: Colors.pink,
  ),
  SalomonBottomBarItem(
    title: const Text('Search'),
    icon: const Icon(Icons.search),
    selectedColor: Colors.orange,
  ),
  SalomonBottomBarItem(
    title: const Text('Profile'),
    icon: const Icon(Icons.person_outline),
    activeIcon: const Icon(Icons.person),
    selectedColor: Colors.teal,
  ),
];
