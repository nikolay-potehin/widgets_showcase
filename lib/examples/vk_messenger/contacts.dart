import 'package:flutter/material.dart';

class VKContactsPage extends StatelessWidget {
  const VKContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Contacts Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
