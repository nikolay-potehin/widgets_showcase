import 'package:flutter/material.dart';

class SimpleNavbar extends StatefulWidget {
  const SimpleNavbar({super.key});

  @override
  State<SimpleNavbar> createState() => _SimpleNavbarState();
}

class _SimpleNavbarState extends State<SimpleNavbar> {
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Navigation Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          _navbarItems[pageIndex].label,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageIndex,
        destinations: _navbarItems,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (selectedIndex) {
          pageIndex = selectedIndex;
          setState(() {});
        },
      ),
    );
  }
}

final _navbarItems = [
  const NavigationDestination(
    icon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home),
    label: 'Home',
  ),
  const NavigationDestination(
    icon: Icon(Icons.favorite_outline),
    selectedIcon: Icon(Icons.favorite),
    label: 'Likes',
  ),
  const NavigationDestination(
    icon: Icon(Icons.search),
    label: 'Search',
  ),
  const NavigationDestination(
    icon: Icon(Icons.person_outline),
    selectedIcon: Icon(Icons.person),
    label: 'Profile',
  ),
];
