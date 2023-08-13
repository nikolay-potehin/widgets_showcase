import 'package:flutter/material.dart';
import 'package:widgets_showcase/components/group_title.dart';
import 'package:widgets_showcase/components/navigation_tile.dart';
import 'package:widgets_showcase/demo_sections.dart';
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
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showMyDialog(context) ?? false;
      },
      child: Scaffold(
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
              ...bottomBarDemos.map(
                (e) => DemoTile(navigationItem: e),
              ),
              const GroupTitle(title: 'AppBars'),
              ...appBarDemos.map(
                (e) => DemoTile(navigationItem: e),
              ),
              const GroupTitle(title: 'ListViews'),
              ...listViewDemos.map(
                (e) => DemoTile(navigationItem: e),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> showMyDialog(BuildContext context) => showDialog<bool>(
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
