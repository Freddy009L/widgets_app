import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_iitems.dart';


class HomeScreen extends StatelessWidget {

  static const String name = "home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter + material 3"),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMeniItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMeniItems[index];

        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuIitems menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ListTile(
      leading: Icon( menuItem.icon, color: colors.primary,),
      trailing:  Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
    title: Text(menuItem.title),
    subtitle: Text(menuItem.subTitle),
    onTap: () {

     // Navigator.of(context).push(
     //   MaterialPageRoute( 
     //     builder: (context) => const ButtonsScreen(),
     //     ),
     // );
     //Navigator.pushNamed(context, menuItem.link);
     //TODO: algunas formas de navegacion de pantallas propias de flutter 

      
   //TODO: Porpias de go rauter

      // context.pushNamed( CardsScreen.name);
      context.push( menuItem.link);
    },
    );
  }
}