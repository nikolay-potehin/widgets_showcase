import 'package:flutter/material.dart';

class PullToRefreshListView extends StatefulWidget {
  const PullToRefreshListView({super.key});

  @override
  State<PullToRefreshListView> createState() => _PullToRefreshListViewState();
}

class _PullToRefreshListViewState extends State<PullToRefreshListView> {
  int itemsCount = 2;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pull To Refresh ListView'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: itemsCount + 1,
          itemBuilder: (_, index) {
            if (index < itemsCount) {
              return Card(
                color: Colors.deepPurple.shade50,
                child: ListTile(
                  leading: const Icon(Icons.favorite_border_rounded),
                  trailing: const Icon(Icons.arrow_forward),
                  title: Text('Item ${index + 1}'),
                ),
              );
            } else {
              return isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : const SizedBox();
            }
          },
          separatorBuilder: (_, __) => const SizedBox(height: 10),
        ),
      ),
    );
  }

  Future<void> refresh() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(milliseconds: 1500));
    if (!mounted) return;

    setState(() {
      itemsCount += 2;
      isLoading = false;
    });
  }
}
