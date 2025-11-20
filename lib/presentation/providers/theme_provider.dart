 
 import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import 'package:widgets_app/theme/app_theme.dart';

//Listado de colores inmutable
//Esto es un estado para manejar buleanos
final isDarkmodeProvider = StateProvider((ref)=> false);

// Un simple boolean
final colorListProvider = Provider((Ref)=> colorList);

//Un simple int
final selectedColorProvider = StateProvider((ref)=> 0);