import 'package:flutter/material.dart';
import 'package:widgets_showcase/pages/bottom_navbar_page.dart';
import 'package:widgets_showcase/pages/google_bottom_bar.dart';
import 'package:widgets_showcase/pages/simple_navbar.dart';
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
        useMaterial3: true,
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
      body: Center(
        child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: navigationList.length,
            itemBuilder: (context, index) {
              final item = navigationList[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  title: Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  leading: Icon(
                    item.leading,
                    color: Theme.of(context).primaryColor,
                  ),
                  trailing: Icon(
                    item.trailing,
                    color: Colors.black38,
                  ),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(),
                      borderRadius: BorderRadius.circular(10)),
                  onTap: () => item.openPage(context),
                ),
              );
            }),
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

final navigationList = [
  const NavigationItem(
    widget: GoogleBottomBar(),
    title: 'Google Bottom Bar',
    leading: Icons.menu,
  ),
  const NavigationItem(
    widget: BottomNavbar(),
    title: 'Bottom Navigation Bar',
    leading: Icons.menu,
  ),
  const NavigationItem(
    widget: SimpleNavbar(),
    title: 'Simple Navigation Bar',
    leading: Icons.menu,
  ),
];
