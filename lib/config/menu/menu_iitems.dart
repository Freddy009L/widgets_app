import 'package:flutter/material.dart'; 


class MenuIitems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

 const MenuIitems({
  required this.title,
  required this.subTitle,
  required this.link,
  required this.icon,
  });
}

const appMeniItems = <MenuIitems>[

 MenuIitems(
  title: 'Botones',
  subTitle: 'Varios botones en Flutter',
  link: '/buttons',
  icon: Icons.smart_button_outlined
),

 MenuIitems(
  title: 'Tajetas',
  subTitle: 'Un contenedor estilizado',
  link: '/card',
  icon: Icons.credit_card
),

 MenuIitems(
  title: 'Progress Indicators',
  subTitle: 'Generales y controlados',
  link: '/porgrees',
  icon: Icons.refresh_rounded
),

MenuIitems(
  title: 'Snackbars y  dialogos',
  subTitle: 'Indicadores en pantalla',
  link: '/snackbars',
  icon: Icons.info_outline
),

MenuIitems(
  title: 'Animated Container',
  subTitle: 'Animacion de pantalla',
  link: '/animated',
  icon: Icons.check_box_outline_blank_rounded
),

MenuIitems(
  title: 'UI Controls',
  subTitle: 'Una serie de controles de Flutter',
  link: '/ui-controls',
  icon: Icons.assignment_turned_in_rounded
),

MenuIitems(
  title: 'Introduccion a la aplicacion',
  subTitle: 'Tutorial introductorio',
  link: '/tutorial',
  icon: Icons.baby_changing_station_sharp
),

MenuIitems(
  title: 'InfiniteScroll y Pull',
  subTitle: 'LIsta infinita',
  link: '/infinite',
  icon: Icons.android_rounded
),
];





