import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SnackbarScreens extends StatelessWidget {

   static const name = 'Snackbar_Screens';
  const SnackbarScreens({super.key});

  void showCustomSnackbar( BuildContext context) {

    
    ScaffoldMessenger.of(context) .showSnackBar(
          SnackBar(content: Text('Que tal'))
        );
  }
//En esta parte explico como hacer los botones de confirmacion
  void openDialog(BuildContext context ) {
    
    showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (contex) => AlertDialog(
      title: Text('Estas seguro?'),
      content:  const Text('Laborum adipisicing enim consectetur sit Lorem excepteur et minim esse commodo occaecat adipisicing proident ex.'),
      actions: [
        TextButton(onPressed: ()=> contex.pop(), child: Text('Cancelar')),

        FilledButton(onPressed: ()=> contex.pop(), child: Text('Aceptar')),
      ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snackbars y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
            onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  Text('Esta politica de seguridad no puede ser modificada por motivos de privacidad'),
                  //SizedBox(width: 100,)
                ]
                );
            },child: const Text('Licencias usadas')),

              FilledButton.tonal(
            onPressed: () =>
              openDialog(context),
              child: const Text('Mostrar dialogo')) 
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
       label: Text('Mostrar snackbars'),
       icon: Icon(Icons.remove_red_eye_outlined),
       onPressed: () => showCustomSnackbar(context),
       ),
    );
  }
}