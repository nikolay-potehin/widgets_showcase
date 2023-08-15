import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_info.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_photo.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_tile_section.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_tiles_data.dart';

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
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (notification) {
                notification.disallowIndicator();
                return true;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const AccountInfo(),
                    const SizedBox(height: 30),
                    AccountTileSection(tilesData: [tilesData[0]]),
                    const SizedBox(height: 12),
                    AccountTileSection(
                        tilesData: tilesData.getRange(1, 5).toList()),
                    const SizedBox(height: 12),
                    AccountTileSection(
                        tilesData: tilesData.getRange(5, 11).toList()),
                    const SizedBox(height: 12),
                    AccountTileSection(tilesData: [tilesData[11]]),
                    const SizedBox(height: 12),
                    AccountTileSection(tilesData: [tilesData[12]]),
                    const SizedBox(height: 12),
                    AccountTileSection(
                        tilesData:
                            tilesData.getRange(13, tilesData.length).toList()),
                    const SizedBox(height: 12),
                  ],
                ),
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
