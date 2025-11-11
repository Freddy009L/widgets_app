import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';


class ButtonsScreen extends StatelessWidget {

  static String name = "buttons_screens";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screens"),
      ),
      body:  _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView(
    
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            ElevatedButton(onPressed: () {}, child: Text("Los servicios")),
      
            ElevatedButton.icon(onPressed: () {}, 
            icon: Icon( Icons.access_alarm),
            label: Text('Elevate Icon')
            ),

            FilledButton(onPressed: () {}, child: Text("Filled")),
            FilledButton.icon(onPressed: () {}, icon: Icon(Icons.account_circle_sharp),
            label: Text("Filled icon"),
            ),

            OutlinedButton(onPressed: () {}, child: Text("outline")),
            OutlinedButton.icon(onPressed: () {},
            icon: Icon(Icons.add_home),
             label: Text("Label"),
             ),


             TextButton(
               onPressed: () {},
               child: Text("Text"),
             ),
             TextButton.icon(
               onPressed: () {},
               icon: Icon(Icons.accessible_forward_outlined),
               label: Text('Text Icon'),
             ),

             // TODO: custom button

             CustomButton(),

             IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart_rounded)),
             IconButton(
               onPressed: () {},
               icon: Icon(Icons.add_shopping_cart_rounded),
               style: ButtonStyle(
                 backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                 iconColor: MaterialStatePropertyAll(Colors.white),
               ),
             ),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius:  BorderRadiusGeometry.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
        //  splashColor: Colors.white,
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("hola", style: TextStyle(color: Colors.white),)
            ),
        ),
      ),
    );
  }
}

// El inkwell sirve para CUANDO LE DES EL CLIC AL BOTON SE VEA MAS DINAMICO