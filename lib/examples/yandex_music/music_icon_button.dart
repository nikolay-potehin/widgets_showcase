import 'package:flutter/material.dart';

class MusicIconButton extends StatelessWidget {
  const MusicIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: VisualDensity.comfortable,
      splashRadius: 24,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
