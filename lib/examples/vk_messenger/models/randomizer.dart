import 'dart:math';

class Randomizer {
  static final random = Random();

  static const timeSpans = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
  static const messages = [
    'Привет!',
    'Привет, как дела?',
    'Жду твоего ответа, короче',
    'Ладно.',
    'Здаров, сегодня все в силе?',
    'Ага, понятно все',
    'Фотография',
  ];

  static String randomTimeSpan() => timeSpans[random.nextInt(timeSpans.length)];

  static String randomMessage() => messages[random.nextInt(messages.length)];
}
