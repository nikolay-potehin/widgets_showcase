import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_info.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_photo.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_tile.dart';

class VKAccountPage extends StatelessWidget {
  const VKAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: appBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AccountPhoto(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  AccountInfo(),
                  SizedBox(height: 10),
                  AccountTile(
                    iconData: Icons.add,
                    iconColor: Colors.orange,
                    text: 'Добавить аккаунт',
                  ),
                  SizedBox(height: 12),
                  AccountTile(
                    text: 'Избранное',
                    iconData: Icons.turned_in_not_rounded,
                    iconColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey.shade200,
      leadingWidth: 100,
      leading: GestureDetector(
        onTap: () {},
        child: const Center(
          child: Text(
            'Изменить',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_rounded,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
