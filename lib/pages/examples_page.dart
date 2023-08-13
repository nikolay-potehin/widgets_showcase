import 'package:flutter/material.dart';

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Examples Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
