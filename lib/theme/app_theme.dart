import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.cyanAccent,
  Colors.yellow,
  Colors.green,
  Colors.pink,
  Colors.orange,
  Colors.deepPurple
];

class AppTheme {
   final int selectedCOlor;
   AppTheme({
    this.selectedCOlor = 0, required int selectedColor
   }): assert( selectedCOlor >= 0, 'Selected color must be greater then 0'),
       assert( selectedCOlor < colorList.length, 'Selected color must be less or equal than ${colorList.length -1 }');


   ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedCOlor],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
   );
}