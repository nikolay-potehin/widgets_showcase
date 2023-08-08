import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _bottomBarItems[pageIndex].label!,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: _bottomBarItems,
        unselectedItemColor: Colors.black45,
        useLegacyColorScheme: false,
        onTap: (currentIndex) {
          pageIndex = currentIndex;
          setState(() {});
        },
      ),
    );
  }
}

final _bottomBarItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.favorite_border),
    activeIcon: Icon(Icons.favorite),
    label: 'Likes',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Search',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    activeIcon: Icon(Icons.person),
    label: 'Profile',
  ),
];
