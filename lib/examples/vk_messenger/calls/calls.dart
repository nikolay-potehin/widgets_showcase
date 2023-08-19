import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/calls_appbar_button.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/calls_history.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/calls_planned.dart';
import 'package:widgets_showcase/examples/vk_messenger/calls/calls_title.dart';

class VKCallsPage extends StatelessWidget {
  const VKCallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: appBar(),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: RefreshIndicator(
            color: Colors.blue,
            onRefresh: () async {
              await Future.delayed(const Duration(seconds: 1));
            },
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CallsTitle(text: 'Запланированные'),
                    CallsPlanned(),
                    CallsTitle(text: 'История звонков'),
                    CallsHistory(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text(
        'Звонки',
        style: TextStyle(
          color: Colors.black,
          fontSize: 19,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call_end_outlined),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CallsAppbarButton(
                backgroundColor: Colors.blue.shade600,
                iconColor: Colors.white,
                iconData: Icons.add_ic_call_outlined,
                text: 'Создать',
              ),
              const CallsAppbarButton(
                backgroundColor: Colors.green,
                iconColor: Colors.white,
                iconData: Icons.calendar_today_outlined,
                text: 'Запланировать',
              ),
              CallsAppbarButton(
                backgroundColor: Colors.grey.shade200,
                iconColor: Colors.blue,
                iconData: Icons.link,
                text: 'Присоединиться',
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
