import 'package:flutter/material.dart';

class VKCallsPage extends StatelessWidget {
  const VKCallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Calls Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
