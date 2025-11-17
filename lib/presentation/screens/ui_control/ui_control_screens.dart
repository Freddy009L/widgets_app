import 'package:flutter/material.dart';


class UiControlScreens extends StatelessWidget {

   static const name = 'uicontrol_Screens';
  const UiControlScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IU controls'),
      ),
      body: _UiControlView()
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum Transportation { car, plane, boat, submarine }
class _UiControlViewState extends State<_UiControlView> {

   bool isDeveloper = true;
   Transportation selectedTransportation =Transportation.car;
   bool wantsBreakfast = false;
   bool wantsLunch = false;
   bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
           title: Text('Developer Node '),
           subtitle: Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),  
        ),

        ExpansionTile(
        title: Text('Vehiculo de transporte'),
        subtitle: Text('$selectedTransportation'),
        children: [

           RadioListTile(
          title: Text('By Sumarino'),
          subtitle: Text('Viajar por submarino'),
          value: Transportation.car, 
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation =Transportation.car;
          }),
          ),

          RadioListTile(
          title: Text('By Car'),
          subtitle: Text('Viajar por Carro'),
          value: Transportation.boat, 
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation =Transportation.boat;
          }),
          ),

          RadioListTile(
          title: Text('By Avion'),
          subtitle: Text('Viajar por Avion'),
          value: Transportation.plane, 
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation =Transportation.plane;
          }),
          ),

          RadioListTile(
          title: Text('By Jet'),
          subtitle: Text('Viajar por Jet'),
          value: Transportation.submarine, 
          groupValue: selectedTransportation, 
          onChanged: (value) => setState(() {
            selectedTransportation =Transportation.submarine;
          }),
          ),
        ],
        ),

        CheckboxListTile(
        title: Text('Almuerzo'),
        value: wantsBreakfast,
        onChanged: (value) => setState(() {
        wantsBreakfast = !wantsBreakfast;
        }),
        ),

        CheckboxListTile(
        title: Text('Cena'),
        value: wantsLunch,
        onChanged: (value) => setState(() {
        wantsLunch = !wantsLunch;
        }),
        ),

        CheckboxListTile(
        title: Text('Cena'),
        value: wantsDinner,
        onChanged: (value) => setState(() {
        wantsDinner = !wantsDinner;
        }),
        ),

      ],
    );
  }
}