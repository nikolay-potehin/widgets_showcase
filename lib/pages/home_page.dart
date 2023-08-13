import 'package:flutter/material.dart';
import 'package:widgets_showcase/pages/examples_page.dart';
import 'package:widgets_showcase/pages/widgets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  static const pages = [
    WidgetsPage(),
    ExamplesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showMyDialog() ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Showcase'),
          centerTitle: true,
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavbarItems,
          currentIndex: currentIndex,
          onTap: (value) => setState(() => currentIndex = value),
        ),
      ),
    );
  }

  Future<bool?> showMyDialog() => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Do you want to close the app?'),
          actions: [
            TextButton(
              child: const Text('No'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        ),
      );
}

const _bottomNavbarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.widgets),
    label: 'Widgets',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.mobile_friendly),
    label: 'Examples',
  ),
];
