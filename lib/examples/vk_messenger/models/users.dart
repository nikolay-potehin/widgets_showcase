import 'package:widgets_showcase/examples/vk_messenger/models/randomizer.dart';

class User {
  final String name;
  final String surname;
  final String lastMessage;
  final String? avatarPath;

  const User({
    required this.name,
    required this.surname,
    required this.lastMessage,
    String? avatarPicName,
  }) : avatarPath =
            avatarPicName == null ? null : 'assets/avatars/$avatarPicName';
}

class MockUsers {
  static final users = mockPredefinedUsers;
}

List<User> mockPredefinedUsers = [
  User(
    name: 'Полина',
    surname: 'Осипова',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-1.jpg',
  ),
  User(
    name: 'Дарья',
    surname: 'Ермолаева',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-2.jpg',
  ),
  User(
    name: 'Елизавета',
    surname: 'Попова',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-3.jpg',
  ),
  User(
    name: 'София',
    surname: 'Смирнова',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-4.jpg',
  ),
  User(
    name: 'Тимофей',
    surname: 'Сидоров',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-1.jpg',
  ),
  User(
    name: 'Дмитрий',
    surname: 'Ковалев',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-2.jpg',
  ),
  User(
    name: 'Павел',
    surname: 'Игнатов',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-3.jpg',
  ),
  User(
    name: 'Ева',
    surname: 'Миронова',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-5.jpg',
  ),
  User(
    name: 'Екатерина',
    surname: 'Калмыкова',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'woman-6.jpg',
  ),
  User(
    name: 'Константин',
    surname: 'Егоров',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-4.jpg',
  ),
  User(
    name: 'Никита',
    surname: 'Плотников',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-5.jpg',
  ),
  User(
    name: 'Даниил',
    surname: 'Соколов',
    lastMessage: Randomizer.randomMessage(),
    avatarPicName: 'man-6.jpg',
  ),
  User(
    name: 'Даниил',
    surname: 'Соколов',
    lastMessage: Randomizer.randomMessage(),
  ),
  User(
    name: 'Даниил',
    surname: 'Соколов',
    lastMessage: Randomizer.randomMessage(),
  ),
  User(
    name: 'Даниил',
    surname: 'Соколов',
    lastMessage: Randomizer.randomMessage(),
  ),
]..shuffle();
