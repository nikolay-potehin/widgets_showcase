import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search AppBar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Default Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  final searchResults = ['Profile', 'Messages', 'Settings', 'Favourites', ''];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => query.isEmpty ? close(context, null) : query = '',
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = searchResults
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
