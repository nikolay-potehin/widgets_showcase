import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/call_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/calls.dart';

class CallsHistory extends StatelessWidget {
  const CallsHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final callsHistory = MockCalls.callHistory;

    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      primary: false,
      shrinkWrap: true,
      itemCount: callsHistory.length,
      itemBuilder: (context, index) {
        final call = callsHistory[index];

        return CallTile(call: call);
      },
    );
  }
}
