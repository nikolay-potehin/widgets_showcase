import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/account/account_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/account_tile_data.dart';

class AccountTileSection extends StatelessWidget {
  final List<AccountTileData> tilesData;

  const AccountTileSection({
    super.key,
    required this.tilesData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ...tilesData.map((e) => AccountTile(tileData: e)),
        ],
      ),
    );
  }
}
