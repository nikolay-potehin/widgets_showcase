import 'package:flutter/material.dart';
import 'package:widgets_showcase/models/navigation_item.dart';

class DemoTile extends StatelessWidget {
  final Color? iconColor;

  const DemoTile({
    super.key,
    required this.navigationItem,
    this.iconColor,
  });

  final DemoItem navigationItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(
          navigationItem.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: Icon(
          navigationItem.leading,
          color: iconColor ?? Theme.of(context).primaryColor,
        ),
        trailing: Icon(
          navigationItem.trailing,
          color: Colors.black38,
        ),
        shape: RoundedRectangleBorder(
            side: const BorderSide(), borderRadius: BorderRadius.circular(10)),
        onTap: () => navigationItem.openPage(context),
      ),
    );
  }
}
