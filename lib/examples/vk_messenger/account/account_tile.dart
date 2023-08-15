import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/account_tile_data.dart';

class AccountTile extends StatelessWidget {
  final AccountTileData tileData;

  const AccountTile({
    super.key,
    required this.tileData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: tileData.iconColor.withAlpha(25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              tileData.iconData,
              color: tileData.iconColor,
              size: 26,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            tileData.text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
