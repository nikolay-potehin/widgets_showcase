import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal ListView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 190,
            ),
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) => Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Icon(
                    Icons.account_box,
                    color: Colors.black54,
                    size: 80,
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Default Page',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
