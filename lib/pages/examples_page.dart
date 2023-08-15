import 'package:flutter/material.dart';
import 'package:widgets_showcase/components/group_title.dart';
import 'package:widgets_showcase/components/navigation_tile.dart';
import 'package:widgets_showcase/models/examples_demo_sections.dart';

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GroupTitle(title: 'VK Мессенджер'),
            DemoTile(
              navigationItem: vkExample,
              iconColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
