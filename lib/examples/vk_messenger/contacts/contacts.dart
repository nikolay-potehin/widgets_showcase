import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/contacts/add_contact_button.dart';
import 'package:widgets_showcase/examples/vk_messenger/contacts/contacts_divider.dart';
import 'package:widgets_showcase/examples/vk_messenger/contacts/contacts_tile.dart';
import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';

class VKContactsPage extends StatelessWidget {
  const VKContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = MockUsers.users;

    return Scaffold(
      appBar: appBar(),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContactsDivider(),
              const AddContactButton(),
              const ContactsDivider(),
              contactsTitle(),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ContactsTile(user: user);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding contactsTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Text(
        'Важные',
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 15,
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue,
      title: const Text(
        'Контакты',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
