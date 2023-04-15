import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/theme_changer/theme_changer_screen.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: ButtonsScreen.name,
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: CardsScreen.name,
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'PrgoressIndicator',
    subTitle: 'Generales y controlados',
    link: ProgressScreen.name,
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'SnackBar',
    subTitle: 'SnackBars y dialogos',
    link: SnackBarScreen.name,
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated Contianer',
    subTitle: 'Stateful widget animado',
    link: AnimatedScreen.name,
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    subTitle: 'Una seria de controles de Flutter',
    link: UiControlsScreen.name,
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'Introducción a la aplicación',
    subTitle: 'Pequeño tutorila introductorio',
    link: AppTutorialScreen.name,
    icon: Icons.accessible_rounded,
  ),
  MenuItems(
    title: 'InfiniteScroll y Pull',
    subTitle: 'Listas infinitas y pull to referesh',
    link: InfiniteScrollScreen.name,
    icon: Icons.list_alt_rounded,
  ),
  MenuItems(
    title: 'CounterScreen y Riverpod',
    subTitle: 'Counter screen con Riverpod ',
    link: CounterScreen.name,
    icon: Icons.plus_one_outlined,
  ),
  MenuItems(
    title: 'Theme Changer',
    subTitle: 'Cambiar tema de la app',
    link: ThemeChangerScreen.name,
    icon: Icons.color_lens_outlined,
  )
];
