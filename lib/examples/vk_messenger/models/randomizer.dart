import 'dart:math';

class Randomizer {
  static final random = Random();

  static const weekDays = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
  static const messages = [
    'Привет!',
    'Привет, как дела?',
    'Жду твоего ответа, короче',
    'Ладно.',
    'Здаров, сегодня все в силе?',
    'Ага, понятно все',
    'Фотография',
    'Доброе утро!',
    'Сегодня такое случилось! При встрече расскажу...'
  ];

  static String randomWeekDay() => weekDays[random.nextInt(weekDays.length)];

  static String randomMessage() => messages[random.nextInt(messages.length)];

  static dynamic fromList(List list) => list[random.nextInt(list.length)];
}
