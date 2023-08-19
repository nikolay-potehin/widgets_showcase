import 'dart:math';

import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';

enum CallType { incoming, outgoing, missed, group }

class Call {
  final User? user;
  final String name;
  final DateTime datetime;
  final CallType type;

  Call({
    required this.name,
    required this.type,
    this.user,
  }) : datetime = DateTime.now().toLocal();

  String get timeDisplay {
    final hour = datetime.hour.toString().padLeft(2, '0');
    final minute = datetime.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }

  static String mapCallTypeToMessage(CallType callType) {
    switch (callType) {
      case CallType.group:
        return 'Групповой';
      case CallType.incoming:
        return 'Входящий';
      case CallType.outgoing:
        return 'Исходящий';
      case CallType.missed:
        return 'Пропущенный';
    }
  }
}

class MockCalls {
  static final callHistory = generateCalls(20);
}

List<Call> generateCalls(int length) {
  final random = Random();
  final users = MockUsers.users;

  return List.generate(length, (index) {
    final user = users[random.nextInt(users.length)];
    final type = CallType.values[random.nextInt(CallType.values.length)];

    return type == CallType.group
        ? Call(
            name: 'Групповой звонок',
            type: type,
          )
        : Call(
            name: '${user.name} ${user.surname}',
            type: type,
            user: user,
          );
  });
}
