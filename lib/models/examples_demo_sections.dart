import 'package:flutter/material.dart';
import 'package:widgets_showcase/examples/vk_messenger/vk_messenger.dart';
import 'package:widgets_showcase/examples/yandex_music/yandex_music.dart';
import 'package:widgets_showcase/models/navigation_item.dart';

const vkExample = DemoItem(
  widget: VKMessenger(),
  title: 'VK Мессенджер',
  leading: Icons.messenger,
);

const yandexMusicExample = DemoItem(
  widget: YandexMusic(),
  title: 'Яндекс.Музыка',
  leading: Icons.music_note,
);
