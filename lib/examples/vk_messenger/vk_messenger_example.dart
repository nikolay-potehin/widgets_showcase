import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavbarItems,
      ),
    );
  }
}

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
      child: Icon(Icons.account_circle),
    ),
    label: 'Аккаунт',
  ),
];
