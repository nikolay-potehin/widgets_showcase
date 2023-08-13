import 'package:flutter/material.dart';
import 'package:widgets_showcase/components/group_title.dart';
import 'package:widgets_showcase/components/navigation_tile.dart';
import 'package:widgets_showcase/widgets_demo_sections.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
