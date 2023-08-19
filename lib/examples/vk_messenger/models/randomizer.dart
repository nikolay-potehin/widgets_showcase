import 'dart:math';

class Randomizer {
  static final random = Random();

  static const weekDays = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
  static const messages = [
    'Привет!',
    'Привет, как дела?',
    'Как учишься, что нового?',
    'Гулять пойдешь?',
    'Не спишь ещё?',
    'Жду твоего ответа, короче',
    'Ладно.',
    'Здаров, сегодня все в силе?',
    'Ага, понятно все',
    'Ясно',
    'Без комментариев просто',
    'Фотография',
    'Доброе утро!',
    'Сегодня такое случилось! При встрече расскажу...',
    'аххахаххахааххаха а хотя нет не смешно',
    'ХАХАХАХХАХАХАВЖВХВЗВХВЗХВЗХВ',
    'жесть',
    'Ну все, давай',
    'До завтра)',
    'Понял, удачи тебе',
    'Хорошо',
  ];

  static String randomWeekDay() => weekDays[random.nextInt(weekDays.length)];

  static String randomMessage() => messages[random.nextInt(messages.length)];

  static String randomLastSeen() => 'был(а) ${random.nextInt(59) + 2}м назад';

  static int randomInt(int max) => random.nextInt(max);
}
