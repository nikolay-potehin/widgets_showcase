import 'package:flutter/material.dart';

class PageListView extends StatefulWidget {
  const PageListView({super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  final pageController = PageController();
  final pageColors = [
    Colors.blue.shade50,
    Colors.green.shade50,
    Colors.red.shade50,
    Colors.amber.shade50,
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page ListView'),
        centerTitle: true,
      ),
      body: PageView.builder(
        itemCount: 4,
        controller: pageController,
        itemBuilder: (context, index) => Container(
          color: pageColors[index],
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Page ${index + 1}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Spacer(),
              ElevatedButton(
                style: const ButtonStyle(
                  minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                ),
                onPressed: () => pageController.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.ease,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next Page',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
