import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/calls.dart';
import 'package:widgets_showcase/examples/vk_messenger/chats/chats.dart';
import 'package:widgets_showcase/examples/vk_messenger/contacts/contacts.dart';

class VKMessengerExample extends StatefulWidget {
  const VKMessengerExample({super.key});

  @override
  State<VKMessengerExample> createState() => _VKMessengerExampleState();
}

class _VKMessengerExampleState extends State<VKMessengerExample> {
  var currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavbarItems,
        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex = value),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        selectedItemColor: Colors.blue,
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
    );
  }
}

const _pages = [
  VKContactsPage(),
  VKCallsPage(),
  VKChatsPage(),
  VKAccountPage(),
];

const _bottomNavbarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.people_outline),
    label: 'Контакты',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.phone_outlined),
    label: 'Звонки',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.messenger_outline_rounded),
    label: 'Чаты',
  ),
  BottomNavigationBarItem(
    icon: CircleAvatar(
      radius: 11,
      backgroundImage: AssetImage('assets/avatars/me.jpg'),
    ),
    label: 'Аккаунт',
  ),
];
