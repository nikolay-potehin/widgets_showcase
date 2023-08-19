import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/message.dart';

class MessageWidget extends StatelessWidget {
  final Message message;

  const MessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (message.type.name == "sended") const Expanded(child: SizedBox()),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.8,
          ),
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.end,
              spacing: 8,
              runSpacing: 4,
              children: [
                Text(message.text),
                const Text(
                  '10:47',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (message.type.name == "received") const Expanded(child: SizedBox()),
      ],
    );
  }
}
