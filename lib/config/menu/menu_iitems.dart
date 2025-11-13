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
];





