import 'package:flutter/material.dart';

class AccountPhoto extends StatelessWidget {
  const AccountPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.blueGrey.shade100,
          radius: 45,
          child: Icon(
            Icons.camera_alt,
            color: Colors.blueGrey.shade300,
            size: 54,
          ),
        ),
      ),
    );
  }
}
