import 'package:flutter/material.dart';

class VKAccountPage extends StatelessWidget {
  const VKAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Account Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
