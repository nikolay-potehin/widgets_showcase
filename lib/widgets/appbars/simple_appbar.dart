import 'package:flutter/material.dart';
import 'package:widgets_showcase/utils.dart';

class SimpleAppbar extends StatelessWidget {
  const SimpleAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple AppBar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add),
            onPressed: () =>
                Utils.showSnackBar('Notification added or something...'),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () =>
                Utils.showSnackBar('Open a search bar or something...'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Default Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
