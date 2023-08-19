import 'package:flutter/material.dart';

class CallsTitle extends StatelessWidget {
  final String text;

  const CallsTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
