import 'package:flutter/material.dart';

class SliverAppbar extends StatelessWidget {
  const SliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            pinned: true,
            centerTitle: true,
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver AppBar',
                // style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
            surfaceTintColor: Colors.transparent,
          ),
        ],
        body: ListView.separated(
          itemCount: 30,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item ${index + 1}'),
            leading: const Icon(Icons.info_outline),
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}
