import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Николай Потехин',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 6),
        Text(
          '@potehin2018',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            letterSpacing: 0.6,
          ),
        ),
        SizedBox(height: 6),
        Text(
          '+7 912 345 67 89',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
