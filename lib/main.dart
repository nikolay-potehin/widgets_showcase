import 'package:flutter/material.dart';
import 'package:widgets_showcase/components/group_title.dart';
import 'package:widgets_showcase/components/navigation_tile.dart';
import 'package:widgets_showcase/pages/appbars/drawer_appbar.dart';
import 'package:widgets_showcase/pages/appbars/search_appbar.dart';
import 'package:widgets_showcase/pages/appbars/simple_appbar.dart';
import 'package:widgets_showcase/pages/appbars/sliver_appbar.dart';
import 'package:widgets_showcase/pages/appbars/transparent_appbar.dart';
import 'package:widgets_showcase/pages/bottom_navbars/bottom_navbar.dart';
import 'package:widgets_showcase/pages/bottom_navbars/google_bottom_bar.dart';
import 'package:widgets_showcase/pages/bottom_navbars/simple_navbar.dart';
import 'package:widgets_showcase/utils.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Showcase'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GroupTitle(title: 'Bottom Navigation Bars'),
            ..._bottomBarsList.map(
              (e) => NavigationTile(navigationItem: e),
            ),
            const GroupTitle(title: 'AppBars'),
            ..._appbarsList.map(
              (e) => NavigationTile(navigationItem: e),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationItem {
  final Widget widget;
  final String title;
  final IconData leading;
  final IconData trailing = Icons.arrow_forward;

  const NavigationItem({
    required this.widget,
    required this.title,
    required this.leading,
  });

  void openPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => widget,
    ));
  }
}

const _bottomBarsList = [
  NavigationItem(
    widget: SimpleNavbar(),
    title: 'Simple Navigation Bar',
    leading: Icons.menu,
  ),
  NavigationItem(
    widget: BottomNavbar(),
    title: 'Bottom Navigation Bar',
    leading: Icons.menu,
  ),
  NavigationItem(
    widget: GoogleBottomBar(),
    title: 'Google Bottom Bar',
    leading: Icons.menu,
  ),
];

const _appbarsList = [
  NavigationItem(
    widget: SimpleAppbar(),
    title: 'Simple AppBar',
    leading: Icons.bar_chart,
  ),
  NavigationItem(
    widget: DrawerAppbar(),
    title: 'Drawer AppBar',
    leading: Icons.bar_chart,
  ),
  NavigationItem(
    widget: SearchAppbar(),
    title: 'Search AppBar',
    leading: Icons.search,
  ),
  NavigationItem(
    widget: SliverAppbar(),
    title: 'Sliver AppBar',
    leading: Icons.keyboard_double_arrow_down_sharp,
  ),
  NavigationItem(
    widget: TransparentAppbar(),
    title: 'Transparent AppBar',
    leading: Icons.question_mark_sharp,
  ),
];
