import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class AccountPhoto extends StatelessWidget {
  const AccountPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.only(bottom: 10),
      child: const Center(
        child: VKCircleAvatar(
          foregroundImage: AssetImage('assets/avatars/me.jpg'),
          radius: 45,
        ),
      ),
    );
  }
}
