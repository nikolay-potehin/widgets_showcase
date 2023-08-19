import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/calls.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_circle_avatar.dart';

class CallTile extends StatelessWidget {
  const CallTile({
    super.key,
    required this.call,
  });

  final Call call;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: call.user == null
          ? VKCircleAvatar.call()
          : VKCircleAvatar.fromUser(call.user!),
      title: Text(
        call.name,
        style: TextStyle(
          color: call.type == CallType.missed ? Colors.red : Colors.black,
        ),
      ),
      subtitle: Row(
        children: [
          ...mapCallTypeToWidgets(call.type),
          Text(Call.mapCallTypeToMessage(call.type)),
          const SizedBox(width: 8),
          const Icon(
            Icons.circle,
            size: 5,
          ),
          const SizedBox(width: 8),
          Text(call.timeDisplay),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.info_outline,
          color: Colors.blue,
        ),
      ),
      onTap: () {},
    );
  }
}

List<Widget> mapCallTypeToWidgets(CallType callType) {
  switch (callType) {
    case CallType.group:
      return [];
    case CallType.incoming:
      return [
        const Icon(
          Icons.call_received,
          size: 14,
        ),
        const SizedBox(width: 5),
      ];
    case CallType.outgoing:
      return [
        const Icon(
          Icons.call_made,
          size: 14,
        ),
        const SizedBox(width: 5),
      ];
    case CallType.missed:
      return [
        const Icon(
          Icons.call_received,
          size: 14,
        ),
        const SizedBox(width: 5),
      ];
  }
}
