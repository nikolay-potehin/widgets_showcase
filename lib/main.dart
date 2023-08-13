import 'package:flutter/material.dart';
import 'package:widgets_showcase/pages/home_page.dart';
import 'package:widgets_showcase/utils.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const HomePage(),
    );
  }
}
