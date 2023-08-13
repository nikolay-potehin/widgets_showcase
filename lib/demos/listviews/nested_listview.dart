import 'package:flutter/material.dart';

class NestedListView extends StatelessWidget {
  const NestedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text('Nested ListView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
              ),
              child: Center(
                  child: Text(
                'Some Widgets',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Item ${index + 1} description'),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
