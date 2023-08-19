import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';

enum Gender { male, female }

class User {
  final String name;
  final String surname;
  final String lastMessage;
  final int lastSeenInMinutes;
  final Gender gender;
  final String? avatarPath;

  User({
    required this.name,
    required this.surname,
    required this.gender,
    String? avatarPicName,
  })  : lastSeenInMinutes = Randomizer.randomInt(60),
        lastMessage = Randomizer.randomMessage(),
        avatarPath =
            avatarPicName == null ? null : 'assets/avatars/$avatarPicName';

  String get nickname => '$name $surname';

  String get lastSeen {
    if (isOnline) return 'online';

    switch (gender) {
      case Gender.female:
        return 'была $lastSeenInMinutesм назад';
      case Gender.male:
        return 'был $lastSeenInMinutesм назад';
    }
  }

  bool get isOnline => lastSeenInMinutes <= 8;
}

class MockUsers {
  static final users = mockPredefinedUsers;
}

List<User> mockPredefinedUsers = [
  User(
    name: 'Полина',
    surname: 'Осипова',
    gender: Gender.female,
    avatarPicName: 'woman-1.jpg',
  ),
  User(
    name: 'Дарья',
    surname: 'Ермолаева',
    gender: Gender.female,
    avatarPicName: 'woman-2.jpg',
  ),
  User(
    name: 'Елизавета',
    surname: 'Попова',
    gender: Gender.female,
    avatarPicName: 'woman-3.jpg',
  ),
  User(
    name: 'София',
    surname: 'Смирнова',
    gender: Gender.female,
    avatarPicName: 'woman-4.jpg',
  ),
  User(
    name: 'Тимофей',
    surname: 'Сидоров',
    gender: Gender.male,
    avatarPicName: 'man-1.jpg',
  ),
  User(
    name: 'Дмитрий',
    surname: 'Ковалев',
    gender: Gender.male,
    avatarPicName: 'man-2.jpg',
  ),
  User(
    name: 'Павел',
    surname: 'Игнатов',
    gender: Gender.male,
    avatarPicName: 'man-3.jpg',
  ),
  User(
    name: 'Ева',
    surname: 'Миронова',
    gender: Gender.female,
    avatarPicName: 'woman-5.jpg',
  ),
  User(
    name: 'Екатерина',
    surname: 'Калмыкова',
    gender: Gender.female,
    avatarPicName: 'woman-6.jpg',
  ),
  User(
    name: 'Константин',
    surname: 'Егоров',
    gender: Gender.male,
    avatarPicName: 'man-4.jpg',
  ),
  User(
    name: 'Никита',
    surname: 'Плотников',
    gender: Gender.male,
    avatarPicName: 'man-5.jpg',
  ),
  User(
    name: 'Даниил',
    surname: 'Соколов',
    gender: Gender.male,
    avatarPicName: 'man-6.jpg',
  ),
  User(
    name: 'Фёдор',
    surname: 'Зубков',
    gender: Gender.male,
  ),
  User(
    name: 'Михаил',
    surname: 'Кузьмин',
    gender: Gender.male,
  ),
  User(
    name: 'Анастасия',
    surname: 'Широкова',
    gender: Gender.female,
  ),
]..shuffle();
