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
];





