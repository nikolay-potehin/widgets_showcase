import 'package:flutter/material.dart';
import 'package:widgets_showcase/demos/appbars.dart';
import 'package:widgets_showcase/demos/bottom_navbars.dart';
import 'package:widgets_showcase/demos/listviews.dart';
import 'package:widgets_showcase/models/navigation_item.dart';

const bottomBarDemos = [
  DemoItem(
    widget: SimpleNavbar(),
    title: 'Simple Navigation Bar',
    leading: Icons.menu,
  ),
  DemoItem(
    widget: BottomNavbar(),
    title: 'Bottom Navigation Bar',
    leading: Icons.menu,
  ),
  DemoItem(
    widget: GoogleBottomBar(),
    title: 'Google Bottom Bar',
    leading: Icons.menu,
  ),
];

const appBarDemos = [
  DemoItem(
    widget: SimpleAppbar(),
    title: 'Simple AppBar',
    leading: Icons.bar_chart,
  ),
  DemoItem(
    widget: DrawerAppbar(),
    title: 'Drawer AppBar',
    leading: Icons.bar_chart,
  ),
  DemoItem(
    widget: SearchAppbar(),
    title: 'Search AppBar',
    leading: Icons.bar_chart,
  ),
  DemoItem(
    widget: SliverAppbar(),
    title: 'Sliver AppBar',
    leading: Icons.bar_chart,
  ),
  DemoItem(
    widget: TransparentAppbar(),
    title: 'Transparent AppBar',
    leading: Icons.auto_fix_normal_outlined,
  ),
];

const listViewDemos = [
  DemoItem(
    widget: SimpleListView(),
    title: 'Simple ListView',
    leading: Icons.list_alt,
  ),
  DemoItem(
    widget: HorizontalListView(),
    title: 'Horizontal ListView',
    leading: Icons.list_alt,
  ),
  DemoItem(
    widget: PageListView(),
    title: 'Page ListView',
    leading: Icons.padding_outlined,
  ),
];
