import 'package:flutter/material.dart';

class FavouritesFAB extends StatelessWidget {
  const FavouritesFAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.yellow.shade600,
      foregroundColor: Colors.black,
      extendedPadding: const EdgeInsets.symmetric(horizontal: 50),
      onPressed: () {},
      label: const Text(
        'Слушать',
        style: TextStyle(
          letterSpacing: 0,
        ),
      ),
      icon: const Icon(Icons.play_arrow),
    );
  }
}
