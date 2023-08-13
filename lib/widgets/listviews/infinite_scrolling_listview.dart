import 'package:flutter/material.dart';

class InfiniteScrollingListView extends StatefulWidget {
  const InfiniteScrollingListView({super.key});

  @override
  State<InfiniteScrollingListView> createState() =>
      _InfiniteScrollingListViewState();
}

class _InfiniteScrollingListViewState extends State<InfiniteScrollingListView> {
  final controller = ScrollController();
  int loadingCounter = 0;
  bool hasData = true;
  final items = [];

  @override
  void initState() {
    super.initState();

    fetch();

    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        fetch();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Future<void> fetch() async {
    if (!hasData) return;

    await Future.delayed(const Duration(milliseconds: 1500));

    if (!mounted) return;

    setState(() {
      if (loadingCounter >= 4) {
        hasData = false;
      } else {
        items.addAll(List<String>.generate(
          15,
          (index) => 'Item ${index + 1 + loadingCounter * 15}',
        ));

        loadingCounter += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scrolling ListView'),
        centerTitle: true,
      ),
      body: ListView.separated(
        controller: controller,
        padding: const EdgeInsets.all(20),
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index < items.length) {
            final item = items[index];

            return Card(
              color: Colors.deepPurple.shade50,
              child: ListTile(
                title: Text(item),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: hasData
                    ? const CircularProgressIndicator()
                    : Text(
                        'No more data to load.',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
              ),
            );
          }
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
