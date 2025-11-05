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

MenuIitems(title: "Trajeta",
 subTitle: "Un contenedor estilizado", 
 link: "/card", 
 icon: Icons.credit_card
 ),
];