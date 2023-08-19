import 'dart:math';

import 'package:widgets_showcase/examples/vk_messenger/models/users.dart';

enum CallType { incoming, outgoing, missed, group }

class Call {
  final User? user;
  final String name;
  final String date;
  final CallType type;

  const Call({
    required this.name,
    required this.date,
    required this.type,
    this.user,
  });

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
            date: '10:47',
            type: type,
          )
        : Call(
            name: '${user.name} ${user.surname}',
            date: '10:47',
            type: type,
            user: user,
          );
  });
}
