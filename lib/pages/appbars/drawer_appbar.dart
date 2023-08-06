import 'package:flutter/material.dart';

class AppbarWithDrawer extends StatefulWidget {
  const AppbarWithDrawer({super.key});

  @override
  State<AppbarWithDrawer> createState() => _AppbarWithDrawerState();
}

class _AppbarWithDrawerState extends State<AppbarWithDrawer> {
  var _pageName = 'Account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar With Drawer'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '$_pageName Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.person,
                        size: 36,
                      ),
                      Text('Alexander'),
                      Text('alexander.email@google.com'),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  'Account',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onTap: () => _onDrawerOptionTapped(context, 'Account'),
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: Text(
                  'Messages',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onTap: () => _onDrawerOptionTapped(context, 'Messages'),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onTap: () => _onDrawerOptionTapped(context, 'Settings'),
              ),
              ListTile(
                leading: const Icon(Icons.close),
                title: Text(
                  'Close',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onDrawerOptionTapped(BuildContext context, String pageName) {
    setState(() {
      _pageName = pageName;
    });
    Navigator.of(context).pop();
  }
}
