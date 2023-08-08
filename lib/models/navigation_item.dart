import 'package:flutter/material.dart';

class DemoItem {
  final Widget widget;
  final String title;
  final IconData leading;
  final IconData trailing = Icons.arrow_forward;

  const DemoItem({
    required this.widget,
    required this.title,
    required this.leading,
  });

  void openPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => widget,
    ));
  }
}
