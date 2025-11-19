import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_iitems.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({
    super.key,
    required this.scaffoldKey
    });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {


  // Esto nos permite ver cuales opciones estan seleccionada en el drawer
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Esta funcio es para el Notch de los celulares tanto android como ios para que el drawer se vea bien 
    final hasNotch = MediaQuery.of(context).viewPadding.top > 0;
    if (Platform.isAndroid) {
      print('Android $hasNotch');
    }else {
      print(' IOS $hasNotch');
    }

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {

        setState(() {
          navDrawerIndex = value;
          final menuItem = appMeniItems[value];
          context.push( menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer();
        });
      },
      children: [

        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 10, 28, 16),
          child: Text('Menu'),
        ),

        ...appMeniItems
        .sublist(0,3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title),
          ),
        ),

        Padding(padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
        child: Divider(),
        ),


            Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 10, 28,),
          child: Text('More options'),
        ),
        ...appMeniItems
        .sublist(3)
        .map((item) => NavigationDrawerDestination(
          icon: Icon(item.icon), 
          label: Text(item.title),
          ),
        ),
        
      ]
      );
  }
}


