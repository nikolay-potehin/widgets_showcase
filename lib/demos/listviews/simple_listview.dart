import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  const SimpleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ListView'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: 100,
          itemBuilder: (context, index) => Card(
            color: Colors.deepPurple.shade50,
            child: ListTile(
              title: Text('Item ${index + 1}'),
              leading: const Icon(Icons.turned_in_not_outlined),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 8),
        ),
      ),
    );
  }
}
