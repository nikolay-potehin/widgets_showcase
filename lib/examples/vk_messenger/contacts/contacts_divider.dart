import 'package:flutter/material.dart';

class ContactsDivider extends StatelessWidget {
  const ContactsDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 16,
      endIndent: 16,
      color: Colors.grey.shade300,
      thickness: 1,
    );
  }
}
